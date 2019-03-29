class PeopleController < ApplicationController
  
  before_action :logged_in_person, only: [:edit, :update]
  before_action :correct_person, only: [:edit, :update]
  
  def new
   @tutor_person = TutorPerson.new
  end
  
  def edit
     @tutor = Tutor.find(params[:id])
     @person = Person.find(@tutor.people_id)
     @tutor_person = TutorPerson.new({:name => @person.name, :email => @person.email, :grade => @tutor.grade, :id_num => @tutor.id_num})
  end
  
  def show
     @tutor = Tutor.find(params[:id])
     @person = Person.find(@tutor.people_id)
     @tutor_person = TutorPerson.new({:name => @person.name, :email => @person.email, :grade => @tutor.grade, :id_num => @tutor.id_num})
   # debugger
  end
  
  def update 
    @person = Person.find(Tutor.find(params[:id]).people_id)
    if @person.update_attributes(tutor_params)
      flash[:success] = "Profile updated"
      redirect_to @person
    else 
    render 'edit'
    end
  end
  
  private 
   
    def tutor_person
      TutorPerson.new(tutor_params)
    end
    def tutor_params
      params.require(:person).permit(:id_num, :grade, :name, :email, :password, :password_confirmation)
    end
    def logged_in_person
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    def correct_person
      @person = Person.find(params[:id])
      redirect_to(root_url) unless current_person?(@person)
    end
end
