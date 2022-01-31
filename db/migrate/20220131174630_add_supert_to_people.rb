class AddSupertToPeople < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :supert, :boolean
  end
end
