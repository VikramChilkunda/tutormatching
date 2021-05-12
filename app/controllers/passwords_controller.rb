require 'PasswordResetEmail.rb'
class PasswordsController < ApplicationController
    
    def forgot
        if password_params[:email].blank? # check if email is present
            #   return render json: {error: 'Email not present'}
            flash[:danger] = "Email not present"
            redirect_to forgotPassword_path
            return
        end

        person = Person.find_by(email: password_params[:email]) # if present find user by email

        if person.present?   
          person.generate_password_token! #generate pass token
          PasswordResetEmail.email(password_params[:email], person.reset_password_token)
          #render json: {status: 'ok'}, status: :ok
          flash[:success] = "Reset request sent"
          redirect_to login_path and return
        else
            #   render json: {error: ['Email address not found. Please check that you entered the correct email address and try again.']}, status: :not_found
            flash[:danger] = "Email address not found. Please check that you entered the correct email address and try again."
            redirect_to forgotPassword_path
            return
        end
    end

    def reset
        token = password_params[:token].to_s
    
        if password_params[:token].blank?
            flash[:danger] = "Unique reset token not entered"
            redirect_to resetPassword_path and return
        end
    
        person = Person.find_by(reset_password_token: token)
    
        if person.present? && person.password_token_valid? && (password_params[:newpassword].length >= 6)
          if person.reset_password!(password_params[:newpassword])
            flash[:success] = "Your password has been updated"
            redirect_to login_path and return
          else
            flash[:danger] = "Sorry, there was an error while attempting to reset your password. Contact cvtutormatch@gmail.com for assistance."
            redirect_to resetPassword_path and return
          end
        else
            if password_params[:newpassword].length < 6
                flash[:danger] = "Your password must be 6 characters or longer. Please select a stronger password"
                redirect_to resetPassword_path and return
            else
                flash[:danger] = "Link not valid or expired. Try generating a new link by requesting to reset your password again."
                redirect_to forgotPassword_path and return
            end
        end
    end
    
    private
    
        def password_params
           params.require(:password).permit(:email, :newpassword, :token) 
        end
end
