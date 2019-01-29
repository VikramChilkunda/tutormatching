class AddGradeToTutors < ActiveRecord::Migration[5.0]
  def change
    add_column :tutors, :grade, :integer
  end
end
