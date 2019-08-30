class RemoveTutornameFromTutorRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :tutor_requests, :Tutorname, :string
  end
end
