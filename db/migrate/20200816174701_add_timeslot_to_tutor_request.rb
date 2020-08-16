class AddTimeslotToTutorRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :tutor_requests, :timeslot, :string
    add_column :tutor_requests, :string, :string
  end
end
