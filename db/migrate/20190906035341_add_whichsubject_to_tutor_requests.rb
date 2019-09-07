class AddWhichsubjectToTutorRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :tutor_requests, :whichSubject, :string
  end
end
