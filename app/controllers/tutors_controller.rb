class TutorsController < ApplicationController
  def new
   @tutor_person = TutorPerson.new
   @person = Person.new
   @tutor = Tutor.new
  end
  
  def edit
     @tutor = Tutor.find(params[:id])
     @person = Person.find(@tutor.people_id)
     @tutor_person = TutorPerson.new({:name => @person.name, :email => @person.email, :grade => @tutor.grade, :id_num => @tutor.id_num})
  end
  
  def show
      unless ((session[:tutor_id].to_s == params[:id]) || (Person.find(session[:tutor_id]).admin))
      
      redirect_to nope_path, :overwrite_params => { :parm => 'foo' }
        return
      end
     @tutor = Tutor.find(params[:id])
     @person = Person.find(@tutor.people_id)
     @tutor_person = TutorPerson.new({:name => @person.name, :email => @person.email, :grade => @tutor.grade, :id_num => @tutor.id_num})
   # debugger
  end
  
  def create
    @checker = false
     @tutor_person = tutor_person
     @person = Person.new
     @tutor = Tutor.new
    Person.all.each do |i|
      if i.email == tutor_params[:email]
        @checker = true
      end
    end
    if !@checker
      @person.email = tutor_params[:email]
      @person.name = tutor_params[:name]
      @person.password = tutor_params[:password]
      @person.password_confirmation = tutor_params[:password_confirmation]
      @tutor = @person.build_tutor
      @tutor.id_num = tutor_params[:id_num]
      @tutor.grade = tutor_params[:grade]
      if tutor_params[:academy] == "true"
        @tutor.academy = true
        @person.academy = true
      else
         @tutor.academy = false
        @person.academy = false
      end
        @tutor.adminOverride = tutor_params[:adminKey]
      
          if (@tutor.save && @person.save)
            log_in @person
            @tutor.update_attribute(:adminOverride, nil)
            flash[:success] = "Tutor signup successful!"
            redirect_to controller: "people", action: "show", id: (@tutor.people_id)
          else 
            if @person.errors.any? || @tutor.errors.any?
              render 'new'
            else
              flash[:danger] = "Invalid ID"
              render 'new'
            end
          end
    else
      flash[:danger] = "Email taken"
      render 'new'
    end
    
  end
  
  def update
    @tutor = Person.find(params[:id])
    if @tutor.update_attributes(tutor_params)
      # Handle a successful update.
      
    else
      render 'edit'
    end
  end
  
  def idInvalid
    flash[:danger] = "Invalid ID"
    redirect_to tutorsignup_path
  end
  
  private 
  
    def tutor_params
      params.require(:tutor_person).permit(:id_num, :grade, :name, :email, :password, :password_confirmation, :adminKey, :academy)
    end
    def tutor_person
      TutorPerson.new(tutor_params)
    end
end
