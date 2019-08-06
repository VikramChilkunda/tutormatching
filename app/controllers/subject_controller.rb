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
    if @subject.save
      flash[:success] = "Created Subject"
      render 'new'
    else
      #flash[:error] = @subject.errors.full_messages
     # redirect_back(fallback_location: '/home')
      render 'new'
    end
  end
  private
    def subject_params
      params.require(:subject).permit(:name, :date, :rate)
    end
end
