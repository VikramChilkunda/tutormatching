class Person < ApplicationRecord
     attr_accessor :remember_token
    has_one :tutee, foreign_key: :people_id, autosave: true, inverse_of: :person
    has_one :tutor, foreign_key: :people_id, autosave: true, inverse_of: :person
    validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
   
    validates :password, presence: true, length: {minimum: 6}, allow_nil: true
    before_save { self.email = email.downcase }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
    
    def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost) 
    end
    
    def remember
    self.remember_token = Person.new_token
    update_attribute(:remember_digest, Person.digest(remember_token))
    end
    
    def self.new_token
        SecureRandom.urlsafe_base64
    end
    
    def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end
    
    def forget
    update_attribute(:remember_digest, nil)
    end
    
  def self.current=(u)
    @current_person = u
  end

  def self.current
    @current_person
  end
    
     has_secure_password
end
