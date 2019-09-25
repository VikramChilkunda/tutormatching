class RemoveInvisibleFromTutorRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :tutor_requests, :invisible, :string
  end
end
