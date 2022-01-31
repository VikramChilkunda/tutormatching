class AddSuperToTutor < ActiveRecord::Migration[5.0]
  def change
    add_column :tutors, :super, :boolean
  end
end
