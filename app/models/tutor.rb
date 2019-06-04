class Tutor < ApplicationRecord
    has_many :subject, foreign_key: :tutor_id, autosave: true, inverse_of: :tutor
    belongs_to :person, foreign_key: :people_id, inverse_of: :tutor
    accepts_nested_attributes_for :person
    validates :id_num, presence: true, length: {is: 6}, uniqueness: true
    validates :grade, presence: false
    
    #has_secure_password
end
