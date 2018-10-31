class AddStudentIdToTutee < ActiveRecord::Migration[5.0]
  def change
    add_column :tutees, :student_id, :string
    add_column :tutees, :integer, :string
  end
end
