class RemoveTutorFromTutorRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :tutor_requests, :Tutor, :string
  end
end
