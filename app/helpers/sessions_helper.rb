module SessionsHelper
 def log_in(tutor)
    session[:tutor_id] = tutor.id
 end
 
 def current_person?(person)
    person == current_person
 end
 
 def current_tutor
   if session[:tutor_id]
    @current_tutor ||= Tutor.find_by(id: session[:tutor_id])
   end
 end
 
 def current_person
   if session[:id]
     @current_person ||= Person.find_by(id: session[:id])
   else
     @current_person ||= Person.first
   end
   
 end
 
 def logged_in?
  !current_tutor.nil?
 end
 
 def log_out
  session.delete(:tutor_id)
  @current_tutor = nil
 end
 
  def create
    person = Person.find_by(email: params[:session][:email].downcase)
    if person && person.authenticate(params[:session][:password])
      log_in person
     # params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
 
  # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
  
  def remember(person)
    person.remember
    cookies.permanent.signed[:user_id] = person.id
    cookies.permanent[:remember_token] = person.remember_token
  end
  
   def current_person
    if (person_id = session[:person_id])
      @current_person ||= Person.find_by(id: person_id)
    elsif (person_id = cookies.signed[:person_id])
      person = Person.find_by(id: person_id)
      if person && person.authenticated?(cookies[:remember_token])
        log_in person
        @current_person = person
      end
    end
   end
   
   def forget(person)
    person.forget
    cookies.delete(:person_id)
    cookies.delete(:remember_token)
   end
  
   def log_out
    forget(current_person)
    session.delete(:person_id)
    @current_person = nil
   end
end
