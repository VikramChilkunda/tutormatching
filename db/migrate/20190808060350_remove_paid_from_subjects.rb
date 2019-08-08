class RemovePaidFromSubjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :subjects, :paid, :boolean
  end
end
