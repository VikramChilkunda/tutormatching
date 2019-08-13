class AddAdminKeyToPeople < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :adminKey, :string
  end
end
