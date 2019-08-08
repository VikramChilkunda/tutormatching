class AddRateToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :rate, :string
  end
end
