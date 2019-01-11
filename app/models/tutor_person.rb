class TutorPerson
    include ActiveModel::Model
    attr_accessor :name, :email, :password, :password_confirmation, :grade, :id_num
    def self.from_tutor_id(id)
        tutor = Tutor.find(id)
        person = Person.find(tutor.people_id)
        new(name: person.name, email: person.email, grade: tutor.grade, id_num: tutor.id_num)
    end
end
