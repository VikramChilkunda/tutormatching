class AddPasswordAndNameToPeopleWhileDeletingTheOtherAttributes < ActiveRecord::Migration[5.0]
  def change
    change_table :people do |t|
      t.remove :integer, :tutee_id, :tutor_id
      t.string :name, before: :created_at
      t.string :password_digest, before: :created_at
    end
  end

end
