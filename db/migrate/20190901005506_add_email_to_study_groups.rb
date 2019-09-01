class AddEmailToStudyGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :study_groups, :email, :string
  end
end
