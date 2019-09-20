class AddThearrayToStudyGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :study_groups, :thearray, :text
  end
end
