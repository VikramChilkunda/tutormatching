class SessionsController < ApplicationController
  def new
  end
  
  def create 
    tutor = Tutor.find_by(id_num: params[:session][:id_num])
    if tutor && tutor.authenticate(params[:session][:password])
      log_in tutor
      redirect_to tutor
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
end
