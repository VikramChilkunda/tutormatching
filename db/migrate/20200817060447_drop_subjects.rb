class DropSubjects < ActiveRecord::Migration[5.0]
  def change
    drop_table :subjects
  end
end
