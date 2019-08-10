class StudyGroup < ApplicationRecord
    include ActiveModel::Model
    
    validates :creatorName, presence: true
    validates :date, presence: true
    validates :location, presence: true
    validates :groupSize, presence: true
    validates :groupName, presence: true
    validates :time, presence: true
end
