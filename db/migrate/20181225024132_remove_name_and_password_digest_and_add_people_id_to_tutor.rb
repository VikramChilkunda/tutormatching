class RemoveNameAndPasswordDigestAndAddPeopleIdToTutor < ActiveRecord::Migration[5.0]
  def change
    change_table :tutors do |t| 
      t.remove :name, :password_digest 
      t.references :people, foreign_key: true 
    end 
  end 
end  