class AddAcceptedToTutorRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :tutor_requests, :accepted, :boolean
  end
end
