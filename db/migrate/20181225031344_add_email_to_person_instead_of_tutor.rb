class AddEmailToPersonInsteadOfTutor < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :email, :string
    remove_column :tutors, :email, :string
  end
end
