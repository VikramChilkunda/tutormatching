require 'Acceptedemail.rb'
require 'Declinedemail.rb'
require 'Mail.rb'

class TutorRequestsController < ApplicationController
  def new
    @request = TutorRequest.new
  end
  
  def create 
    @request = TutorRequest.new     
    @request.student = params[:student]
    @request.email = params[:email]
    @request.name = params[:tutoremail]     #name is supposed to be the tutor's email, but I don't want to mess the database up right now by changing the model attribute
    @request.whichSubject = params[:whichSubject]
    @request.time = params[:time]
    if @request.save
      flash[:success] = "Sent request - tutor will contact you at your given email address"
      Mail.email(params[:tutoremail], params[:student], params[:whichSubject])
      redirect_to findatutor_path
    else
      #flash[:error] = @subject.errors.full_messages
     # redirect_back(fallback_location: '/home')
     flash[:alert] = "Unable to send request"
      redirect_to findatutor_path
    end
  end
  
  #ADD A TRY CATCH
  def makeAccepted
      Acceptedemail.email(TutorRequest.find(params[:check]).email, Person.find_by(email: TutorRequest.find(params[:check]).name).name, TutorRequest.find(params[:check]).whichSubject)
      TutorRequest.find(params[:check]).update_attribute(:accepted, true)
      flash[:success] = "Accepted"
      redirect_to person_path(Person.find_by(id: session[:tutor_id])) 
  end
  
  def destroy
    #IMPORTANT: since destroy will only be called when a request is declined, the declined email goes in this method
    Declinedemail.email(TutorRequest.find(params[:check]).email, Person.find_by(email: TutorRequest.find(params[:check]).name).name, TutorRequest.find(params[:check]).whichSubject)
     TutorRequest.find(params[:check]).destroy
     flash[:success] = "Request deleted"
      redirect_to person_path(Person.find_by(id: session[:tutor_id])) 
  end
  
  private
    def request_params
      params.require(:tutor_request).permit(:student, :email, :tutoremail, :whichSubject, :time)
    end
    def accept_params
      params.permit(:accepted)
    end
end
