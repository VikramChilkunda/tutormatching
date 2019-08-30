class AddNameToTutorRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :tutor_requests, :name, :string
  end
end
