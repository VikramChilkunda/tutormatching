class AddTimeslotsToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :timeslots, :text
  end
end
