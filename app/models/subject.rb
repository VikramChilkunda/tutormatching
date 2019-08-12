class Subject < ApplicationRecord
    belongs_to :tutor, foreign_key: :tutor_id, inverse_of: :person, optional:true
   # accepts_nested_attributes_for :person
    include ActiveModel::Model
   #  attr_accessor :name, :date, :rate
    # def self.from_tutor_id(id)
    #     tutor = Tutor.find(id)
    #     person = Person.find(tutor.people_id)
    #     new(name: person.name, email: person.email, grade: tutor.grade, id_num: tutor.id_num)
    # end
    
  def self.search(search)
    if search  #if search is not nil
      subjuctivo = Subject.find_by(name: search)
      if subjuctivo #if subject exists
        self.where(name: search)
      else
        #flash[:error] = "No such subject" 
        Subject.all
      end
    else
      #flash[:error]="No such subject"
      Subject.all
    end
  end
    
    
    #belongs_to :tutor, foreign_key: :subject_id, inverse_of: :subject
   # accepts_nested_attributes_for :tutor
    validates :name, presence: true
    validates :date, presence: true
    validates :rate, presence: true
    
end
