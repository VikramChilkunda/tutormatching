class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :date
      t.string :rate
      t.integer :creatorid
      t.text :days
      t.text :Multiplesubjects

      t.timestamps
    end
  end
end
