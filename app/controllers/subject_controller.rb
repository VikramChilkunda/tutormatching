class SubjectController < ApplicationController
  def new
    @subject = Subject.new
  end
  
  def create 
    @subject = Subject.new(:name => subject_params[:name], :date => subject_params[:date], :rate => subject_params[:rate])
    if @subject.save
      flash[:success] = "Created Subject"
      render 'new'
    else
      #flash[:error] = @subject.errors.full_messages
     # redirect_back(fallback_location: '/home')
     render 'new'
    end
  end
  private
    def subject_params
      params.require(:subject).permit(:name, :date, :rate)
    end
end
