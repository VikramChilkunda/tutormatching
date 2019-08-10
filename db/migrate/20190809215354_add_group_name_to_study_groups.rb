class AddGroupNameToStudyGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :study_groups, :groupName, :string
  end
end
