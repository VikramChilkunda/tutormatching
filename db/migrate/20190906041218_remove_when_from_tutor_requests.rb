class RemoveWhenFromTutorRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :tutor_requests, :when, :string
  end
end
