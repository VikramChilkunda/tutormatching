class SubjectController < ApplicationController
  def new
    @subject = Subject.new
  end
  
  def create 
    @subject = Subject.new(:name => subject_params[:name], :date => subject_params[:date], :rate => subject_params[:rate])
    if @subject.save
      flash[:success] = "Created Subject"
       redirect_to subjectcreate_path
    else
      #flash[:error] = @subject.errors.full_messages
     # redirect_back(fallback_location: '/home')
     redirect_to subjectcreate_path
    end
  end
  
  def showSubject
    return @subject
  end
  
  private
    def subject_params
      params.require(:subject).permit(:name, :date, :rate)
    end
end
