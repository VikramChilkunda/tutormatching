class SubjectController < ApplicationController
  def new
    @subject = Subject.new
  end
  
  def create 
    @subject = Subject.new(:name => params[:name], :date => params[:date], :rate => params[:rate])
    if @subject.save
      flash[:success] = "Created Subject"
      # redirect_to action: "show", id: @tutor.id
    else
      #flash[:error] = @subject.errors.full_messages
     # redirect_back(fallback_location: '/home')
    end
  end
  private
    def subject_params
      params.require(:subject).permit(:name, :date, :rate)
    end
end
