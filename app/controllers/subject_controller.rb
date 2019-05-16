class SubjectController < ApplicationController
  def new
    @subject = Subject.new
  end
  
  def create 
    @subject = Subject.new(subject_params)
    if @subject.save
      flash[:success] = "Created Subject"
    else
      #flash[:error] = @subject.errors.full_messages
      render 'show'
    end
  end
  private
    def subject_params
      params.require(:subject).permit(:name, :date, :rate)
    end
end
