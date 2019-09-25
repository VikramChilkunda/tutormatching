class AddInvisibleToTutorRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :tutor_requests, :invisible, :boolean
  end
end
