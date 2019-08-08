class AddCreatoridToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :creatorid, :integer
  end
end
