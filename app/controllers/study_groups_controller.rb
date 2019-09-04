class StudyGroupsController < ApplicationController
  def new
    @study_groups = StudyGroup.new
  end
  
  def create
    @study_groups  = StudyGroup.new
   @study_groups.creatorName = group_params[:creatorName]
    @study_groups.date = group_params[:date]
     @study_groups.location = group_params[:location]
     @study_groups.groupSize = group_params[:groupSize]
     @study_groups.groupName = group_params[:groupName]
     @study_groups.time = group_params[:time]
     @study_groups.email = group_params[:email]
    if @study_groups.save 
      flash[:success] = "Group creation successful!"
      redirect_to studygroup_path
    else 
      #flash[:error] =  "Could not create group"
      render 'new'
    end
  end
  
  def allgroups
    @allofthemgroups = StudyGroup.all
  end    

  
  private 
  
    def group_params
      params.require(:study_group).permit(:creatorName, :date, :location, :groupSize, :groupName, :time, :email)
    end
  
end
