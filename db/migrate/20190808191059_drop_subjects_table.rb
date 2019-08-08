class DropSubjectsTable < ActiveRecord::Migration[5.0]
  
  def up
    drop_table :subjects
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
