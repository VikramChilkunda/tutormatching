class SessionsController < ApplicationController
  def new
  end
  
  def create 
    person = Person.find_by(email: params[:session][:email])
    @overwatch = params[:id]
    
    if person && person.authenticate(params[:session][:password])
      log_in person
      remember(person)
      params[:session][:remember_me] == '1' ? remember(person) : forget(person)
      session[:id] = person.id
      redirect_to person
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
