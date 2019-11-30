class Subject < ApplicationRecord
     belongs_to :tutor, foreign_key: :tutor_id, inverse_of: :person, optional:true
     
     serialize :days,Array
     serialize :Multiplesubjects,Array
   # accepts_nested_attributes_for :person
    #include ActiveModel::Model
   #  attr_accessor :name, :date, :rate
    # def self.from_tutor_id(id)
    #     tutor = Tutor.find(id)
    #     person = Person.find(tutor.people_id)
    #     new(name: person.name, email: person.email, grade: tutor.grade, id_num: tutor.id_num)
    # end
    
  def self.search(searchName, searchDate)
   #search = search.downcase   *no need for downcase if we implement dropdowns
    if searchName && searchDate   #if a name and date have been entered
      if searchDate == "All"      #if searching for any day
        self.where(name: searchName)
      else
          subjuctivo = Subject.find_by(name: searchName, date: searchDate)
          if subjuctivo #if subject exists with correct name and date
            self.where(name: searchName, date: searchDate)
            #flash[:error] = "No such subject" 
          else
            subjuctivo = Subject.find_by(name: searchName)
            if subjuctivo                #if subject is available but not on chosen date
                #flash[:error] = "No tutors available on " + searchDate + " for "+ searchName
                
                #self.where(name: searchName)
                
                return nil
            else                         #if no tutors are available for subject
                #flash[:error] = "No tutors available for " + searchName
                return nil
            end
          end
      end
    elsif searchName               #if only name has been entered
        subjuctivo = Subject.find_by(name: searchName)
        if subjuctivo
            self.where(name: searchName)
        else
            #flash[:error] = "No tutors available for " + searchName
            return nil
        end
    else                            
      #flash[:error]="No such subject"
      return nil
    end
  end
    
    
    #belongs_to :tutor, foreign_key: :subject_id, inverse_of: :subject
   # accepts_nested_attributes_for :tutor
    validates :name, presence: true
    validates :date, presence: true
    #validates :rate, presence: true
end
