class RemoveAdminFromTutors < ActiveRecord::Migration[5.0]
  def change
    remove_column :tutors, :admin, :boolean
  end
end
