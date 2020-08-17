class RemoveRememberDigestFromPeople < ActiveRecord::Migration[5.0]
  def change
    remove_column :people, :remember_digest, :string
  end
end
