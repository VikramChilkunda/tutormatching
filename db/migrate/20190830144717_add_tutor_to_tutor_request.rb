class AddTutorToTutorRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :tutor_requests, :Tutor, :string
  end
end
