class TutorRequestsController < ApplicationController
  def new
    @request = TutorRequest.new
  end
  
  def create 
    @request = TutorRequest.new     
    @request.student = params[:student]
    @request.email = params[:email]
    @request.name = params[:name]
    @request.whichSubject = params[:whichSubject]
    @request.time = params[:time]
    if @request.save
      flash[:success] = "Sent request - tutor will contact you at your given email address"
      redirect_to findatutor_path
    else
      #flash[:error] = @subject.errors.full_messages
     # redirect_back(fallback_location: '/home')
     flash[:alert] = "Unable to send request"
      redirect_to findatutor_path
    end
  end
  
  def destroy
     TutorRequest.find(params[:check]).destroy
     TutorRequest.find(params[:check]).update_attribute(:invisible, true)
      flash[:success] = "Request deleted"
      redirect_to person_path(Person.find_by(id: session[:tutor_id])) 
  end
  
  private
    def request_params
      params.require(:tutor_request).permit(:student, :email, :name, :whichSubject, :time)
    end
end
