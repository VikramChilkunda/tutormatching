class AddTimeToStudyGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :study_groups, :time, :string
  end
end
