class AddSuperToPeople < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :super, :boolean
  end
end
