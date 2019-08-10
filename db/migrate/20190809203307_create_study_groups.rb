class CreateStudyGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :study_groups do |t|
      t.string :creatorName
      t.string :date
      t.string :location
      t.integer :groupSize

      t.timestamps
    end
  end
end
