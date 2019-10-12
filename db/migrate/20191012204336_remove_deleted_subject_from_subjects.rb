class RemoveDeletedSubjectFromSubjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :subjects, :deletedSubject, :string
    remove_column :subjects, :boolean, :string
  end
end
