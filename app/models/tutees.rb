class Tutee < ApplicationRecord
    validates :name, presence: true, length: {maximum: 50}
    VALID_EMAIL_REGEX = /\A[a-z0-9\+\-_\.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 255}, format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
    validates :gradYear, presence: true
    validates :student_id, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
    has_secure_password
    
end