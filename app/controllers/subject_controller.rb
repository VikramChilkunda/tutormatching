class SubjectController < ApplicationController
  def new
    @subject = Subject.new
  end
  
  def create
   
      @multSubjects = subject_params[:Multiplesubjects]
      @multSubjects.to_a.each do |i|
        @subject = Subject.new     
        @subject.name = i
        @subject.date = subject_params[:date]
        @subject.rate = subject_params[:rate]
        @subject.creatorid = session[:tutor_id]
        @subject.days << subject_params[:date]
      end
    
    @appended = false
    Subject.all.each do |i|
      if((subject_params[:name] == i.name) && (subject_params[:rate] == i.rate) && (i.creatorid == session[:tutor_id]))
        @appended = true
        i.update_attribute(:days, i.days << subject_params[:date])
       # flash[:success] = (i.date)
      end
    end
    if @appended    
      redirect_to Person.find_by(id: session[:tutor_id])     
    elsif !@appended
      @subject = Subject.new     
      @subject.name = subject_params[:name]
      @subject.date = subject_params[:date]
      @subject.rate = subject_params[:rate]
      @subject.creatorid = session[:tutor_id]
      @subject.days << subject_params[:date]        #this line is used to ensure the day gets added to the newly created, empty array
      #@subject.deletedSubject = false
      if @subject.save
        #flash[:success] = subject_params[:Multiplesubjects]
        flash[:success] = "Created Subject"
        redirect_to Person.find_by(id: session[:tutor_id])
      else
        #flash[:error] = @subject.errors.full_messages
       # redirect_back(fallback_location: '/home')
        render 'new'
      end
    end
  end
  
  def destroy 
   #Subject.find(session[:selected_subject_id]).destroy
      # Subject.find(params[:check]).update_attribute(:deletedSubject, true)
        Subject.find(params[:check]).destroy
    flash[:success] = "Subject deleted"
    #flash[:success] = Subject.find(params[:check]).deletedSubject
    
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
      params.require(:subject).permit(:name, :date, :rate, :searchName, :searchDate, Multiplesubjects:[])
    end
    
end
