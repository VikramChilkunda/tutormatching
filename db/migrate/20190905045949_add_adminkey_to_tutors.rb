class AddAdminkeyToTutors < ActiveRecord::Migration[5.0]
  def change
    add_column :tutors, :Adminkey, :string
  end
end
