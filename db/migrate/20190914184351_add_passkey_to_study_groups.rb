class AddPasskeyToStudyGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :study_groups, :passkey, :string
  end
end
