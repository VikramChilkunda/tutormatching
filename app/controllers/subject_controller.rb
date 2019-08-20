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
    @subject = Subject.new     
    @subject.name = subject_params[:name]
    @subject.date = subject_params[:date]
    @subject.rate = subject_params[:rate]
    @subject.creatorid = session[:tutor_id]
    if @subject.save
      flash[:success] = "Created Subject"
      redirect_to Person.find_by(id: session[:tutor_id])
    else
      #flash[:error] = @subject.errors.full_messages
     # redirect_back(fallback_location: '/home')
      render 'new'
    end
  end
  
  def destroy 
   # Subject.find(session[:selected_subject_id]).destroy
   Subject.find(params[:check]).delete
    flash[:success] = "Subject deleted"
    redirect_to person_path(Person.find_by(id: session[:tutor_id]))
  end
  
  def findatutor
    @subjuctivos = Subject.search(params[:searchName], params[:searchDate])
    if !params[:searchName].nil?
     #redirect_to findresults_path
     redirect_to  controller: 'subject', action: 'findresults', searchName: params[:searchName], searchDate: params[:searchDate]
    end
  end
  
  def findresults
    #redirect_to findresults_path
    @subjuctivos = Subject.search(params[:searchName], params[:searchDate])
  end
  
  
  
  private
    def subject_params
      params.require(:subject).permit(:name, :date, :rate, :searchName, :searchDate)
    end
end
