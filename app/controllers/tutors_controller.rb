class TutorsController < ApplicationController
  def new
    @tutor = Tutor.new
  end
  
  def show
    @tutor = Tutor.find(params[:id])
    #debugger
  end
end
