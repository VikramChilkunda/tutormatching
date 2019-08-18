class CreateCvSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :cv_subjects do |t|
      t.string :name

      t.timestamps
    end
  end
end
