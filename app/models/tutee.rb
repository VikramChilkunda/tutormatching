class Tutee < ApplicationRecord
    validates :name, presence: true, length: {maximum: 50}
    validates :password, presence: true, length: { minimum: 6 }
    has_secure_password
    
end