class AddIndexToTutorsEmail < ActiveRecord::Migration[5.0]
  def change
    add_index :tutors, :email, unique: true
  end
end
