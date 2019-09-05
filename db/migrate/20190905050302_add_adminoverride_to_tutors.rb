class AddAdminoverrideToTutors < ActiveRecord::Migration[5.0]
  def change
    add_column :tutors, :adminOverride, :string
  end
end
