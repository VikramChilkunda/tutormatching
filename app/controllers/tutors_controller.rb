class TutorsController < ApplicationController
  def signup
    @tutor = Tutor.new
  end
  
  def new
    @tutor = Tutor.new
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
    if @tutor.save
      
    else 
      render 'new'
    end
  end
  
  private 
  
    def tutor_params
      params.require(:tutor).permit(:name, :email, :id_num, :password, :password_confirmation)
    end
end
