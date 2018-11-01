class AddPasswordDigestToTutees < ActiveRecord::Migration[5.0]
  def change
    add_column :tutees, :password_digest, :string
    add_column :tutees, :string, :string
  end
end
