class AddDeletedsubjectToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :deletedSubject, :boolean
  end
end
