class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :integer
      t.string :tutee_id
      t.string :integer
      t.string :tutor_id

      t.timestamps
    end
  end
end
