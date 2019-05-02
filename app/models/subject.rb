class Subject < ApplicationRecord
    belongs_to :tutor, foreign_key: :subject_id, inverse_of: :subject
    accepts_nested_attributes_for :tutor
    validates :name, presence: true
    validates :date, presence: true
    validates :rate, presence: true
    
end
