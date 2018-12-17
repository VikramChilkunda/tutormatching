class RemoveEmailGradyearStudentIntegerStringFromTutees < ActiveRecord::Migration[5.0]
  def change
    remove_column :tutees, :email
    remove_column :tutees, :gradYear
    remove_column :tutees, :student_id
    remove_column :tutees, :integer
    remove_column :tutees, :string
  end
end
