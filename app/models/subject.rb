class Subject < ApplicationRecord
     belongs_to :tutor, foreign_key: :tutor_id, inverse_of: :subject, optional:true
     
     serialize :days,Array
     serialize :Multiplesubjects,Array
     serialize :timeslots,Array
    
     def self.search(searchName, searchDate)
         @subjuctivos = Array.new 
         if searchName && searchDate   #if a name and date have been entered
          if searchDate == "All"      #if searching for any day
            self.where(name: searchName)
          else
            Subject.all.each do |i|         
                if i.days.detect {|x| x==searchDate} && (i.name == searchName)     #Find all subjects with the chosen day in the subject's :days array attribute
                    @subjuctivos << i 
                end
            end
            if !@subjuctivos.first.nil?
                return @subjuctivos
            else
                return nil
            end
          end
         else                            
            return nil
         end
     end
     
    #validates :date, presence: true
    #validates :rate, presence: true
    #validates_length_of :rate, minimum: 2
end