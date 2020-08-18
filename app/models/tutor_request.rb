class TutorRequest < ApplicationRecord
   # include ActiveModel::Model
    serialize :timeslots,Array
    
    validates :student, presence: true
    validates :email, presence: true
    validates :name, presence: true
end
