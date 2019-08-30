class CreateTutorRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :tutor_requests do |t|
      t.string :student
      t.string :email

      t.timestamps
    end
  end
end
