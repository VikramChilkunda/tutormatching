class Tutor < ApplicationRecord
     attr_accessor :remember_token, :please
    has_many :subject, foreign_key: :tutor_id, autosave: true, inverse_of: :tutor
    belongs_to :person, foreign_key: :people_id, inverse_of: :tutor
    before_save :save_validation 
    accepts_nested_attributes_for :person
    validates :id_num, presence: true, length: {is: 6}, uniqueness: true, if: :adminOverrideCheck  #, if: :adminOverride
    validates :grade, presence: true
    
    def save_validation
        @check = false
        Cvstudent.all.each do |i|                             #checks that student id exists 
            
            if ((i.idnum == self.id_num))
                @check = true
            end
        end
        
        Person.all.each do |i|                                #if id doesn't exist, check if an admin key was provided (for a new student or someone not in database)
            if (self.adminOverride == i.adminKey)
                @check = true
            end
        end
        if !@check
            puts "EITHER STUDENT ID IS INVALID OR ADMIN KEY IS INVALID (IF IT WAS ENTERED)"
            throw(:abort)
        end
    end
    
    def adminOverrideCheck
        @check = false
        Person.all.each do |i|
            if ((i.admin == true) && (self.adminOverride == i.adminKey))
                @check = true
                return false
            end
        end
        if @check == false
           puts "NO VALID ADMIN KEY ENTERED"
           return true
        end
    end
end
