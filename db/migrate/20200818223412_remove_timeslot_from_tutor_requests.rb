class RemoveTimeslotFromTutorRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :tutor_requests, :timeslot, :string
  end
end
