class TutorsController < ApplicationController
  def signup
    @tutor = Tutor.new
    @person = Person.new
  end
  
  def new
    @tutor = Tutor.new
    @person = Person.new
  end
  
  def edit
    @tutor = Tutor.find(params[:id])
  end
  
  def show
    @tutor = Tutor.find(params[:id]) 
   # debugger
  end
  
  def create 
    @tutor = Tutor.new(tutor_params)
    @person = Person.new(tutee_id: 0)
    if @tutor.save
      @person.tutor_id = Tutor.last.id
      @person.save
      flash[:success] = "Tutor signup successful!"
      redirect_to @tutor
    else 
      render 'new'
    end
  end
  
  private 
  
    def tutor_params
      params.require(:tutor).permit(:name, :email, :id_num, :password, :password_confirmation)
    end
end
