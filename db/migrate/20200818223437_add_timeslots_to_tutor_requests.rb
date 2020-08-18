class AddTimeslotsToTutorRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :tutor_requests, :timeslots, :text
  end
end
