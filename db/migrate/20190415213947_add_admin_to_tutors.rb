class AddAdminToTutors < ActiveRecord::Migration[5.0]
  def change
    add_column :tutors, :admin, :boolean, default: false
  end
end
