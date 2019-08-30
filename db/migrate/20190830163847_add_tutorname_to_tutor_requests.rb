class AddTutornameToTutorRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :tutor_requests, :Tutorname, :string
  end
end
