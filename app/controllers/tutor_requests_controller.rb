class TutorRequestsController < ApplicationController
  def new
    @request = TutorRequest.new
  end
  
  def create 
    @request = TutorRequest.new     
    @request.student = params[:student]
    @request.email = params[:email]
    @request.name = params[:name]
    if @request.save
      flash[:success] = "Sent request"
      redirect_to findatutor_path
    else
      #flash[:error] = @subject.errors.full_messages
     # redirect_back(fallback_location: '/home')
     flash[:alert] = "Unable to send request"
      redirect_to findatutor_path
    end
  end
  
  private
    def request_params
      params.require(:tutor_request).permit(:student, :email, :name)
    end
end
