class AddDaysToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :days, :text
  end
end
