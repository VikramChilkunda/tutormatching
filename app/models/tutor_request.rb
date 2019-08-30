class TutorRequest < ApplicationRecord
    include ActiveModel::Model
    
    
    validates :student, presence: true
    validates :email, presence: true
    validates :name, presence: true
end
