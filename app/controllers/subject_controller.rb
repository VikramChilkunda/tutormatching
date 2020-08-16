class SubjectController < ApplicationController
  def new
    @subject = Subject.new
    
  end
  
  def create
      @multSubjects = subject_params[:Multiplesubjects]
      @multSubjects.to_a.each do |i|
        @appended = false
        
        Subject.all.each do |f|
          if((i == f.name) && (subject_params[:rate] == f.rate) && (f.creatorid == session[:tutor_id]) && (subject_params[:timeslot] == f.timeslot))
            @dayexists = false      ### CHECKS IF THE REQUESTED DAY IS ALREADY REGISTERED
            f.days.to_a.each do |x|
              if (x == subject_params[:date])
                @dayexists = true
                i=nil
              end
            end
            
            if !@dayexists
              @appended = true
              f.update_attribute(:days, f.days << subject_params[:date])
            end
          end
        end
        
        if @appended    
          #redirect_to Person.find_by(id: session[:tutor_id])     
        elsif !@appended &&  !i.nil?
          @subject = Subject.new     
          @subject.name = i
          @subject.date = subject_params[:date]
          @subject.rate = subject_params[:rate]
          @subject.creatorid = session[:tutor_id]
          @subject.timeslot = subject_params[:timeslot]
          if subject_params[:date] == 'All'
            (@subject.days << ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday']).flatten!
          else
            @subject.days << subject_params[:date]
          end
          if @subject.save
            flash[:success] = "Created Subject"
          else
            render 'new'
          end
        end
      end
      redirect_to Person.find_by(id: session[:tutor_id])     
  end
  
  def destroy 
   
    if (params[:check].to_s == "-2")
      Subject.all.each do |i|
        if (i.creatorid == session[:tutor_id])
          i.destroy
        end
      end
    else
      Subject.find(params[:check]).destroy
      flash[:success] = "Subject deleted"
    end
    
    redirect_to person_path(Person.find_by(id: session[:tutor_id]))
  end
  
  def findatutor
    @subjuctivos = Subject.search(params[:searchName], params[:searchDate])
    if ((!params[:searchName].nil?) && (params[:searchName] != "blank"))                                                    #if subject is not nil (would happen if they got to findresults and then clicked find tutor in the navbar) and a subject had been selected
     #redirect_to findresults_path
     redirect_to  controller: 'subject', action: 'findresults', searchName: params[:searchName], searchDate: params[:searchDate]
    end 
    if ((params[:searchName] == "blank"))                             #if no subject has been selected (appears as "select" on the dropdown which return value="blank")
      flash[:danger] = "No subject chosen"
      redirect_to :back                                               #reload the page so the flash doesn't appear again if they manually reload the page
    end
  end
  
  def findresults
    #redirect_to findresults_path
    @subjuctivos = Subject.search(params[:searchName], params[:searchDate])
  end
  
  def selectedTutor
    redirect_to action: "findresults", searchName: params[:searchName], searchDate: params[:searchDate]
    flash[:success] = "Tutor email: " + params[:helpthevariables]
  end
  
  def requestTutor
    redirect_to action: "findresults", searchName: params[:searchName], searchDate: params[:searchDate]
    
  end
  
  private
    def subject_params
      params.require(:subject).permit(:name, :date, :rate, :searchName, :searchDate, :timeslot, :Multiplesubjects => [])
    end
    
end
