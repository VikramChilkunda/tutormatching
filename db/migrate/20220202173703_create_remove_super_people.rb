class CreateRemoveSuperPeople < ActiveRecord::Migration[5.0]
  def change
    remove_column :people, :super
  end
end

