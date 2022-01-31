class TutorPerson
    include ActiveModel::Model
    attr_accessor :name, :email, :password, :password_confirmation, :grade, :id_num, :adminKey, :academy, :supert
    
    #validates :id_num, presence: true, length: {is: 6}, if: :idnum_validation_check
    
    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    # validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
    #has_secure_password
    
   
    def self.from_tutor_id(id)
        tutor = Tutor.find(id)
        person = Person.find(tutor.people_id)
        new(name: person.name, email: person.email, grade: tutor.grade, id_num: tutor.id_num)
    end
    
    
end
