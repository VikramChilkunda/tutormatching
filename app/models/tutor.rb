class Tutor < ApplicationRecord
     attr_accessor :remember_token, :please
    has_many :subject, foreign_key: :tutor_id, autosave: true, inverse_of: :tutor
    belongs_to :person, foreign_key: :people_id, inverse_of: :tutor
    before_save :save_validation 
    accepts_nested_attributes_for :person
    validates :id_num, presence: true, length: {is: 6}, uniqueness: true, if: :adminOverrideCheck  #, if: :adminOverride
    validates :grade, presence: true
    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    # validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
    #has_secure_password
    
    def save_validation
        @check = false
        Cvstudent.all.each do |i|                             #checks that student id exists 
            
            if ((i.idnum == self.id_num))
                @check = true
               # flash[:notice] = "thank god"
            end
           # puts "THIS IS WHAT YOU WANT" 
          #  puts self.id_num
        end
        
        Person.all.each do |i|                                #if id doesn't exist, check if an admin key was provided (for a new student or someone not in database)
            if (self.adminOverride == i.adminKey)
                @check = true
            end
            #puts "MY NAME'S NOT JOEL, IDK WHAT YOU HEARD"
            #puts self.adminOverride
        end
        if !@check
            puts "I AM A BOT"
           # redirect_to controller: 'tutors', action: 'idInvalid'
            throw(:abort)
        end
    end
    
    # def letAdminRepeat
    #   if self.id_num == 111111
    #       return false
    #   end
    #   return true
    # end
    
    def adminOverrideCheck
        @check = false
        Person.all.each do |i|
            if ((i.admin == true) && (self.adminOverride == i.adminKey))
                @check = true
                return false
            end
        end
        if @check == false
           puts "AWW MAN IM THE ERROR"
           return true
        end
    end
end
