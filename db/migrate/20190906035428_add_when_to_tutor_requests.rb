class AddWhenToTutorRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :tutor_requests, :when, :string
  end
end
