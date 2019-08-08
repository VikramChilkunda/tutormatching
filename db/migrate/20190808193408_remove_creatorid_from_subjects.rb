class RemoveCreatoridFromSubjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :subjects, :creatorid, :integer
  end
end
