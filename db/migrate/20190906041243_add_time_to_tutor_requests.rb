class AddTimeToTutorRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :tutor_requests, :time, :string
  end
end
