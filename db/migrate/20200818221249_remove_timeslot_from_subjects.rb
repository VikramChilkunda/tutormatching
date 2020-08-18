class RemoveTimeslotFromSubjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :subjects, :timeslot, :string
  end
end
