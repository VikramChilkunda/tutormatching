class CreateRemoveSuperTutors < ActiveRecord::Migration[5.0]
  def change
    remove_column :tutors, :super
  end
end
