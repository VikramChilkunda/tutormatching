class CreateTutors < ActiveRecord::Migration[5.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :email
      t.integer :id_num

      t.timestamps
    end
  end
end
