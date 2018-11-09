class TutorsController < ApplicationController
  def new
  end
  
  def show
    @tutor = Tutor.find(params[:id])
    #debugger
  end
end
