class Tutor < ApplicationRecord
     attr_accessor :remember_token, :please
    has_many :subject, foreign_key: :tutor_id, autosave: true, inverse_of: :tutor
    belongs_to :person, foreign_key: :people_id, inverse_of: :tutor
    before_save :save_validation 
    accepts_nested_attributes_for :person
    validates :id_num, presence: true, length: {is: 6}, uniqueness: true, if: :letAdminRepeat  #, if: :adminOverride
    validates :grade, presence: true
    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    # validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
    #has_secure_password
    
    def save_validation
        @check = false
        Cvstudent.all.each do |i|                             #checks that student id exists 
            
            if ((i.idnum == self.id_num) || (self.id_num == 111111))
                @check = true
               # flash[:notice] = "thank god"
            end
            puts "THIS IS WHAT YOU WANT" 
            puts self.id_num
        end
        
        # @thisistheadmin = self.adminOverride
        #  Person.all.each do |i|                                #if id doesn't exist, check if an admin key was provided (for a new student or someone not in database)
        #     if @thisistheadmin == 600
        #         flash[:notice] = "not joel"
        #         @check = true
        #     end
        #     puts "MY NAME'S NOT JOEL, IDK WHAT YOU HEARD"
        #     puts self.adminOverride
        # end
        
        throw(:abort) if !@check
    end
    
    def letAdminRepeat
       if self.id_num == 111111
           return false
       end
       return true
    end
    
    def adminOverride
        @check = false
        Person.all.each do |i|
            if ((i.admin == true) && (self.id_num == 45))
                @check = true
                return true
            end
        end
        return false
    end
end
