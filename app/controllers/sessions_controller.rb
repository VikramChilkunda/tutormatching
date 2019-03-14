class SessionsController < ApplicationController
  def new
  end
  
  def create 
    tutor = Person.find_by(email: params[:session][:email])
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
