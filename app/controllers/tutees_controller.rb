class TuteesController < ApplicationController
  def new
    @tutee = Tutee.new
  end
  def show
    @tutee = Tutee.find(params[:id])
  end

  def signup
  end
  
  def new
    @tutee = Tutee.new
  end
  
  def show
    @tutee = Tutee.find(params[:id])
  end
  
  def create
    @tutee = Tutee.new(tutee_params)
    if @tutee.save
      flash[:success] = "Congrats on signing up to be tutored!"
      redirect_to home_path
    else
      render 'new'
    end
  end
  def tutee_params
      params.require(:tutee).permit(:name, :email, :password, :gradYear, :student_id, :password_confirmation)
  end
end
