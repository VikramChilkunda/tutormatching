class Cvstudent < ApplicationRecord
    
    validates :idnum, presence: true, uniqueness: true
    
end
