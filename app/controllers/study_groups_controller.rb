class StudyGroupsController < ApplicationController
  def new
    @group = StudyGroup.new
  end
  
  def create
    @group = StudyGroup.new
    @group.name = group_params[:creatorName]
    @group.name = group_params[:date]
    @group.name = group_params[:location]
    @group.name = group_params[:groupSize]
    @group.name = group_params[:groupName]
    @group.name = group_params[:time]
    if @group.save 
      flash[:success] = "Group creation successful!"
      redirect_to action: "new"
    else 
      flash[:error] = @group.errors.full_messages
      render 'new'
    end
  end
  
  private 
  
    def group_params
      params.require(:study_groups).permit(:creatorName, :date, :location, :groupSize, :groupName, :time)
    end
  
end
