class AddPasswordResetColumnsToPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :reset_password_token, :string
    add_column :people, :reset_password_sent_at, :datetime
  end
end
