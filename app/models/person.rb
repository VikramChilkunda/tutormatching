class Person < ApplicationRecord
    require 'securerandom' 
     attr_accessor :remember_token
    has_one :tutor, foreign_key: :people_id, autosave: true, inverse_of: :person
    validates :name, presence: true, length: { maximum: 50 }, uniqueness: false
   
    validates :password, presence: true, length: {minimum: 6}, allow_nil: true
    
    
    
    
    #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

    before_save { self.email = email.downcase }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@+gusd\.net\z/i
    validates :email, presence: true, length: {maximum: 255}, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
    
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
  
  def generate_password_token!
    self.reset_password_token = generate_token
    self.reset_password_sent_at = Time.now.utc
    save!
  end
  
  def password_token_valid?
    (self.reset_password_sent_at + 4.hours) > Time.now.utc
  end
  
  def reset_password!(password)
    self.reset_password_token = nil
    self.password = password
    save!
  end
  
  private
  
  def generate_token
   SecureRandom.hex(10)
  end
    
     has_secure_password
end
