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
     @tutor = Tutor.find(params[:id])
     @person = Person.find(@tutor.people_id)
     @tutor_person = TutorPerson.new({:name => @person.name, :email => @person.email, :grade => @tutor.grade, :id_num => @tutor.id_num})
   # debugger
  end
  
  def create 
    @tutor_person = tutor_person
    @person = Person.find_or_initialize_by email: tutor_params[:email]
    @person.name = tutor_params[:name]
    @person.password = tutor_params[:password]
    @person.password_confirmation = tutor_params[:password_confirmation]
    @tutor = @person.build_tutor
    @tutor.id_num = tutor_params[:id_num]
    @tutor.grade = tutor_params[:grade]
    
        if @person.save && @tutor.save
          log_in @person
          flash[:success] = "Tutor signup successful!"
          redirect_to action: "show", id: @tutor.id
        else 
          # flash[:error] = @tutor.errors.full_messages
          render 'new'
         # flash[:notice] = "hibye"        
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
  
  private 
  
    def tutor_params
      params.require(:tutor_person).permit(:id_num, :grade, :name, :email, :password, :password_confirmation)
    end
    def tutor_person
      TutorPerson.new(tutor_params)
    end
end
