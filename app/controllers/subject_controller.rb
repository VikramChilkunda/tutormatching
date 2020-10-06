class SubjectController < ApplicationController
  def new
    @subject = Subject.new
  end
  
  def create
      @multSubjects = subject_params[:Multiplesubjects] #Multiplesubjects is an array of strings (subject names), not Subjects
      @multSubjects.to_a.each do |i|
        @appended = false
  
        Subject.all.each do |f|
          if((f.creatorid == session[:tutor_id]) && (i == f.name) && (subject_params[:rate] == f.rate))
            #Same timeslots, maybe adding new days
            if(subject_params[:timeslots].to_a.sort == f.timeslots.to_a.sort)
              subject_params[:days].to_a.each do |x|
                if !f.days.to_a.include?(x)
                  f.update_attribute(:days, f.days << x)
                  @appended = true
                end
              end
            #Same days, maybe adding new timeslots
            elsif(subject_params[:days].to_a.sort == f.days.to_a.sort)
              subject_params[:timeslots].to_a.each do |x|
                if !f.timeslots.to_a.include?(x)
                  f.update_attribute(:timeslots, f.timeslots << x)
                  @appended = true
                end
              end
            end
          end
        end
        
        if !@appended
          @subject = Subject.new     
          @subject.name = i
          @subject.rate = subject_params[:rate]
          @subject.creatorid = session[:tutor_id]
          subject_params[:timeslots].to_a.each do |a|
            @subject.timeslots << a
          end
          subject_params[:days].to_a.each do |a|
            @subject.days << a
          end
          if @subject.save
            flash[:success] = "Created Subject"
          else
            render 'new' and return
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
    if ((!params[:searchName].nil?) && (params[:searchName] != "blank"))     #if subject is not nil (would happen if they got to findresults and then clicked find tutor in the navbar) and a subject had been selected
     #redirect_to findresults_path
     redirect_to  controller: 'subject', action: 'findresults', searchName: params[:searchName], searchDate: params[:searchDate]
    end 
    if ((params[:searchName] == "blank"))                          
      flash[:danger] = "No subject chosen"
      redirect_to :back   #reload the page so the flash doesn't appear again if they manually reload the page
    end
  end
  
  def findatutorRosemont
    @results = Subject.search(params[:searchName], params[:searchDate])
    if ((!params[:searchName].nil?) && (params[:searchName] != "blank"))
     redirect_to  controller: 'subject', action: 'findresultsRosemont', searchName: params[:searchName], searchDate: params[:searchDate]
    end 
    if ((params[:searchName] == "blank"))                          
      flash[:danger] = "No subject chosen"
      redirect_to :back 
    end
  end
  
  def findresults
    @subjuctivos = Subject.search(params[:searchName], params[:searchDate])
  end
  
  def findresultsRosemont
    @results = Subject.search(params[:searchName], params[:searchDate])
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
      params.require(:subject).permit(:name, :date, :rate, :searchName, :searchDate, :days => [], :timeslots => [], :Multiplesubjects => [])
    end
end
