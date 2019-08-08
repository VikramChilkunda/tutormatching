class AddPaidToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :paid, :boolean
  end
end
