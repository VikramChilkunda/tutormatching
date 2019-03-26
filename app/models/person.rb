class Person < ApplicationRecord
    has_one :tutee, foreign_key: :people_id, autosave: true, inverse_of: :person
    has_one :tutor, foreign_key: :people_id, autosave: true, inverse_of: :person
    validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
   
    validates :password, presence: true, length: {minimum: 6}, allow_nil: true
    before_save { self.email = email.downcase }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
    
    def Person.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost) 
    end
     has_secure_password
end
