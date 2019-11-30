class AddMultiplesubjectsToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :Multiplesubjects, :text
  end
end
