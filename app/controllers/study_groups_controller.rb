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
     @study_groups.passkey = group_params[:passkey]
    if @study_groups.save 
      flash[:success] = "Group creation successful!"
      redirect_to studygroup_path
    else 
      #flash[:error] =  "Could not create group"
      render 'new'
    end
  end
  
  def update
    @group = StudyGroup.find_by(email: group_params[:email])
    
    if @group.update_attributes(group_params)
      flash[:success] = "Group updated"
      redirect_to studygroup_path
    else
      flash[:danger] = "Failed to update group"
      redirect_to studygroup_path
    end
  end
  
  def joinGroup   #method to add a person to the group's array and reduce the number of spots open by 1
    @group = StudyGroup.find_by(email: group_params[:email])
    @group.thearray_will_change!
    @group.update_attribute(:thearray, [@group.thearray, params[:name]])
    @group.update_attribute(:groupSize, @group.groupSize-1)
    flash[:success] = "Joined group"
    redirect_to studygroup_path
  end
  
  def allgroups
    @allofthemgroups = StudyGroup.all
    @group = StudyGroup.new
  end    
  
  def ownerPage
    @ownedGroup = StudyGroup.new
  end
  
  def ownerGroup
    @ownedGroup = StudyGroup.find_by(passkey: group_params[:passkey], email: group_params[:email])
    #flash[:success] = group_params[:email]
    if @ownedGroup
     # redirect_to ownerGroup_path, ownerGroup: @ownerGroup.email
    end
    @group = StudyGroup.find_by(email: params[:ownerGroup])
  end

  
  private 
  
    def group_params
      params.require(:study_group).permit(:creatorName, :date, :location, :groupSize, :groupName, :time, :email, :passkey, :thearray) #params.require(:study_group).permit.... would be ideal but has errors when using joinGroup
    end
  
end
