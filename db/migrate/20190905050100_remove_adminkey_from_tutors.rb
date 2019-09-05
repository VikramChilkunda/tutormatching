class RemoveAdminkeyFromTutors < ActiveRecord::Migration[5.0]
  def change
    remove_column :tutors, :Adminkey, :string
  end
end
