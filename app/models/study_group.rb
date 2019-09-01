class StudyGroup < ApplicationRecord
    include ActiveModel::Model
    #attr_accessor :creatorname, :date, :location, :groupSize, :groupName, :time
    
    validates :creatorName, presence: true
    validates :date, presence: true
    validates :location, presence: true
    validates :groupSize, presence: true
    validates :groupName, presence: true
    validates :time, presence: true
    validates :email, presence: true
end
