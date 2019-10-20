class StudyGroupsController < ApplicationController
   before_action :is_owner, only: [:destroy]
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
     #flash[:success] = group_params[:study_group]
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
    @group = StudyGroup.find_by(email: um_params[:email])
    @group.thearray_will_change!
    @group.update_attribute(:thearray, @group.thearray << um_params[:name])
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
    @adminLook = StudyGroup.find_by(email: group_params[:email])
    #flash[:success] = group_params[:email]
    @checker = false                                                 #CHECKER IS USED TO CHECK FOR AN ADMIN PASS CODE
    Person.all.each do |i|
      if group_params[:passkey] == i.adminKey
       @checker = true
      end
    end
    if (@checker && @adminLook) 
      # @group = StudyGroup.find_by(email: params[:ownerGroup])
       @ownedGroup = @adminLook
    elsif @checker
      flash[:danger] = "Email entered does not own a group"
      redirect_to studygroup_path
    elsif @ownedGroup 
       @ownedGroup
     # redirect_to ownerGroup_path, ownerGroup: @ownerGroup.email
    else
     flash[:danger] = "Access denied"
      redirect_to studygroup_path
    end
    
    # @group = StudyGroup.find_by(email: params[:ownerGroup])
  end
  
  def destroy
    StudyGroup.find(params[:id]).destroy
    flash[:success] = "Group deleted"
    redirect_to studygroup_path
  end

  
  private 
  
    def group_params
      params.require(:study_group).permit(:creatorName, :date, :location, :groupSize, :groupName, :time, :email, :passkey, :thearray, :name) 
    end
    
    def um_params           # MOSTLY FOR JOIN GROUP METHOD - the .require in group_params caused issues with join group and so um_params was born
      params.permit(:creatorName, :date, :location, :groupSize, :groupName, :time, :email, :passkey, :thearray, :name)
    end
    
    def is_owner
      unless 1==1
          flash[:danger] = "Please log in."
          redirect_to ownerPage_url
      end
    end
end
