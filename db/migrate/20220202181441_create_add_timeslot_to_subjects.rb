class CreateAddTimeslotToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :timeslot, :string
  end
end
