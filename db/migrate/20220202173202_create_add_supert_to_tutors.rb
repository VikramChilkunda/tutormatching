class CreateAddSupertToTutors < ActiveRecord::Migration[5.0]
  def change
      add_column :tutors, :supert, :boolean
  end
end
