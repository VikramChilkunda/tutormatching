class AddAcademyToPeople < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :academy, :boolean
  end
end
