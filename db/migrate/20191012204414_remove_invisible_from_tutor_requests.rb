class RemoveInvisibleFromTutorRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :tutor_requests, :invisible, :string
  #  remove_column :tutor_requests, :boolean, :string
  end
end
