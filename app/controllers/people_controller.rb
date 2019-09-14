class PeopleController < ApplicationController
  
  before_action :logged_in_person, only: [:edit, :update, :destroy]
 # before_action :correct_person, only: [:edit, :update]
  before_action :admin_person,     only: [:destroy, :index, :excel, :adminPage]
  
  def index
    @people = Person.paginate(page: params[:page])
  end
  
  def new
   @person = Person.new

  end
  
  def edit
     @tutor = Tutor.find(params[:id])
     @person = Person.find(@tutor.people_id)
     @tutor_person = TutorPerson.new({:name => @person.name, :email => @person.email, :grade => @tutor.grade, :id_num => @tutor.id_num})
  end
  
  def show
     @person = Person.find(params[:id])
    # $knockout = params[:id]
   # debugger
  end
  
  def update 
    @person = Person.find(params[:id])
    
    if @person.admin 
      if @person.update_attributes(tutor_params) 
        flash[:success] = "Profile updated"
        redirect_to adminPage_path
      else
        render 'edit'
      end
      
    else
      if @person.update_attributes(tutor_params) 
        flash[:success] = "Profile updated"
        redirect_to @person
      else
       render 'edit'
      end
    end
  end
  
  def destroy
    if Person.find_by(id: session[:tutor_id]).admin?
      Tutor.find(params[:id]).destroy
      Person.find(params[:id]).destroy
      flash[:success] = "Person deleted"
      redirect_to people_url
    else
      Subject.all.each do |i|
        if i.creatorid = params[:id]
          i.update_attribute(:deletedSubject, true)
        end
      end
      Tutor.find(params[:id]).destroy
      Person.find(params[:id]).destroy
      flash[:success] = "Account deleted"
      session[:tutor_id] = false
      redirect_to home_path
    end
  end
  
  def subject
    @tutor = Tutor.find(params[:id])
    @person = Person.find(@tutor.people_id)
    @tutor_person = TutorPerson.new({:name => @person.name, :email => @person.email, :grade => @tutor.grade, :id_num => @tutor.id_num})
  end
  
  def excel 
    @persons = Person.order('created_at DESC')
    respond_to do |format|
      format.html
      format.xlsx {
        response.headers['Content-Disposition'] = 'attachment; filename="all_people.xlsx"'
      }
    end
  end
  
  def adminPage
    @person = Person.find(session[:tutor_id])
    
    @persons = Person.order('created_at DESC')
    respond_to do |format|
      format.html
      format.xlsx {
        response.headers['Content-Disposition'] = 'attachment; filename="all_people.xlsx"'
      }
    end
  end
  
  private 
   
    def tutor_person
      TutorPerson.new(tutor_params)
    end
    def tutor_params
      params.require(:person).permit(:id_num, :grade, :name, :email, :password, :password_confirmation, :adminKey)
    end
    def logged_in_person
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    def correct_person
      @person = Person.find(params[:id])
      redirect_to(root_url) unless current_person?(@person)
    end
    
    def admin_person
      if((session[:tutor_id]) && (@person))
      redirect_to(root_url) unless Person.find_by(id: session[:tutor_id]).admin?
      end
    end 
end
