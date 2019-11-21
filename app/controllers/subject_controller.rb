class SubjectController < ApplicationController
  def new
    @subject = Subject.new
    
  end
  
  def create
    # @tutor = Tutor.last
    # @subject = Subject.new
    
    # @tutor = Tutor.find(params[:id])
    # @person = Person.find(@tutor.people_id)
    # @tutor_person = TutorPerson.new({:name => @person.name, :email => @person.email, :grade => @tutor.grade, :id_num => @tutor.id_num})
    
    #@subject = @tutor.build_subject
    @appended = false
    Subject.all.each do |i|
      if((subject_params[:name] == i.name) && (subject_params[:rate] == i.rate))
        @appended = true
        i.update_attribute(:days, i.days << subject_params[:date])
        flash[:success] = "Created Subject thanks"
        redirect_to Person.find_by(id: session[:tutor_id])           
      end
    end
    if !@appended
      @subject = Subject.new     
      @subject.name = subject_params[:name]
      @subject.date = subject_params[:date]
      @subject.rate = subject_params[:rate]
      @subject.creatorid = session[:tutor_id]
      @subject.days << subject_params[:date]
      #@subject.deletedSubject = false
      if @subject.save
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
      params.require(:subject).permit(:name, :date, :rate, :searchName, :searchDate)
    end
    
end
