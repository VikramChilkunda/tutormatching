module SessionsHelper
 def log_in(tutor)
    session[:tutor_id] = tutor.id
 end
 
 def current_tutor
   if session[:tutor_id]
    @current_tutor ||= Tutor.find_by(id: session[:tutor_id])
   end
 end
 
 def logged_in?
  !current_tutor.nil?
 end
end
