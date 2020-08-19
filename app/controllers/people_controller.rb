require 'TutorRequestMail.rb'

class PeopleController < ApplicationController
  
  before_action :logged_in_person, only: [:edit, :update, :destroy]
  before_action :admin_person,     only: [:destroy, :index, :excel, :adminPage, :people]
  
  def index
    unless Person.find(session[:tutor_id]).admin
      redirect_to nope_path, :overwrite_params => { :parm => 'foo' }
      return
    end
    @people = Person.paginate(page: params[:page]).order(:name)
    @admins = Person.all.select{|a| a.admin}.paginate(page: params[:page])
    @seniors = Tutor.all.select{|a| a.grade == 12}.paginate(page: params[:page])
    @juniors = Tutor.all.select{|a| a.grade == 11}.paginate(page: params[:page])
    @sophomores = Tutor.all.select{|a| a.grade == 10}.paginate(page: params[:page])
    @freshmen = Tutor.all.select{|a| a.grade == 9}.paginate(page: params[:page])
  end
  
  def new
   @person = Person.new

  end
  
  def edit
     @tutor = Tutor.find_by(people_id: params[:id])
     @person = Person.find(params[:id])
     @tutor_person = TutorPerson.new({:name => @person.name, :email => @person.email, :grade => @tutor.grade, :id_num => @tutor.id_num})
  end
  
  def show
    
      unless ((session[:tutor_id].to_s == params[:id]) || (Person.find(session[:tutor_id]).admin))             #make sure a person is only going to their profile or the user is an admin    session[:tutor_id] is an int and params[:id] is a string
      
      redirect_to nope_path, :overwrite_params => { :parm => 'foo' }
        return
      end
      @person = Person.find(params[:id])
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
    if Person.find_by(id: session[:tutor_id]).admin?                 #FOR ADMINS DELETING A TUTOR
       Subject.all.each do |i|
        if i.creatorid == params[:id]
          i.destroy
        end
        TutorRequest.all.each do |r|
          if r.name == Person.find(params[:id]).name
            r.destroy
          end
        end
      end
       Tutor.find_by(people_id: params[:id]).destroy
       Person.find(params[:id]).destroy
      flash[:success] = "Person deleted"
      redirect_to people_url
    else                                                             #FOR TUTORS DELETING THEIR OWN ACCOUNT
      Subject.all.each do |i|
        if i.creatorid == params[:id]
          i.destroy
        end
      end
       TutorRequest.all.each do |r|
        if r.name == Person.find(params[:id]).name
          r.destroy
        end
       end
      Tutor.find_by(people_id: params[:id]).destroy
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
  
  
  
  def sendemail
    TutorRequestMail.email("adroyalz@gmail.com", "testName", "testSubject")
  end
  
  
  def startNewAcademicYear #increment grade and delete all graduated students
    Person.all.each do |a|
      @newGrade = a.tutor.grade + 1
      a.tutor.update_attributes(grade: @newGrade)
      if(a.tutor.grade == 13)
        Subject.all.each do |s|        #very inefficient, need to make a tutor subject relationship
          if s.creatorid == a.tutor.id
            s.delete
          end
        end
        a.tutor.delete
        a.delete
      end
    end
    flash[:success] = "Academic year updated"
    redirect_to adminPage_path
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