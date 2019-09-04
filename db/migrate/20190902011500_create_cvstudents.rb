class CreateCvstudents < ActiveRecord::Migration[5.0]
  def change
    create_table :cvstudents do |t|
      t.integer :idnum

      t.timestamps
    end
  end
end
