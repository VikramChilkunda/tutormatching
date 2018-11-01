class CreateTutees < ActiveRecord::Migration[5.0]
  def change
    create_table :tutees do |t|
      t.string :name
      t.string :email
      t.integer :gradYear

      t.timestamps
    end
  end
end
