class Tutee < ApplicationRecord
    belongs_to :person, foreign_key: :people_id, inverse_of: :tutee
    accepts_nested_attributes_for :person
end