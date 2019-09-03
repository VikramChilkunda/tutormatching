class Tutor < ApplicationRecord
     attr_accessor :remember_token
    has_many :subject, foreign_key: :tutor_id, autosave: true, inverse_of: :tutor
    belongs_to :person, foreign_key: :people_id, inverse_of: :tutor
    before_save :save_validation
    accepts_nested_attributes_for :person
    validates :id_num, presence: true, length: {is: 6}, uniqueness: true
    validates :grade, presence: true
    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    # validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
    #has_secure_password
    
    def save_validation
        @check = false
        Cvstudent.all.each do |i|
            
            if i.idnum == :id_num
                @check = true
                flash[:notice] = i.idnum
            end
            
        end
        throw(:abort) if !@check
        
        #flash[:notice] = "hi"
    end
    
    def idnum_validation_check
        1 == 3
    end
end
