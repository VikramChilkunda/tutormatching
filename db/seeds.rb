# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.create!(name:  "Adarsh Chilkunda",
             email: "adroyalz@stu.gusd.net",
             password:              "advik291",
             password_confirmation: "advik291",
             admin: true,
             adminKey: "advik291",
             academy: false,
             super: false
             )
Tutor.create!(id: Person.find_by(name: "Adarsh Chilkunda").id,
              id_num: 419418,
              people_id: Person.find_by(name: "Adarsh Chilkunda").id,
              grade: 0,
              academy: false,
              super: false,
              adminOverride: "advik291")
# CvSubject.create!(name: "English 9")
# CvSubject.create!(name: "English 9 Advanced")
# CvSubject.create!(name: "English 10")
# CvSubject.create!(name: "English 10 Honors")
# CvSubject.create!(name: "American Literature")
# CvSubject.create!(name: "English Literature")
# CvSubject.create!(name: "ELD Level 1-2")
# CvSubject.create!(name: "ELD Level 3")
# CvSubject.create!(name: "ELD Level 4")
# CvSubject.create!(name: "ELD Level 5")
# CvSubject.create!(name: "Lit for Success")
# CvSubject.create!(name: "Human Geography")
# CvSubject.create!(name: "World History")
# CvSubject.create!(name: "US History")
# CvSubject.create!(name: "American Government")
# CvSubject.create!(name: "Economics")
# CvSubject.create!(name: "Sociology")
# CvSubject.create!(name: "Psychology")
# CvSubject.create!(name: "Integrated Math I")
# CvSubject.create!(name: "Integrated Math II")
# CvSubject.create!(name: "Integrated Math II Accelerated")
# CvSubject.create!(name: "Integrated Math III")
# CvSubject.create!(name: "Integrated Math III Accelerated")
# CvSubject.create!(name: "Trigonometry/Statistics")
# CvSubject.create!(name: "Math Analysis")
# CvSubject.create!(name: "Math Analysis Honors")
# CvSubject.create!(name: "Linear Algebra Honors")
# CvSubject.create!(name: "Intervention Math")
# CvSubject.create!(name: "Int Math II Concepts")
# CvSubject.create!(name: "Math Thinking")
# CvSubject.create!(name: "Biology")
# CvSubject.create!(name: "Medical Biology")
# CvSubject.create!(name: "Earth Space Science")
# CvSubject.create!(name: "Chemistry")
# CvSubject.create!(name: "Physics")
# CvSubject.create!(name: "Kinesiology")
# CvSubject.create!(name: "Physiology")
# CvSubject.create!(name: "Physiology Honors")
# CvSubject.create!(name: "Sports Medicine")
# CvSubject.create!(name: "Health")
# CvSubject.create!(name: "French 1-2")
# CvSubject.create!(name: "French 3-4")
# CvSubject.create!(name: "French 5-6")
# CvSubject.create!(name: "German 1-2")
# CvSubject.create!(name: "German 3-4")
# CvSubject.create!(name: "German 5-6")
# CvSubject.create!(name: "German 5-6 Honors")
# CvSubject.create!(name: "Korean 1-2")
# CvSubject.create!(name: "Korean 3-4")
# CvSubject.create!(name: "Korean 5-6")
# CvSubject.create!(name: "Spanish 1-2")
# CvSubject.create!(name: "Spanish 3-4")
# CvSubject.create!(name: "Spanish 5-6")
# CvSubject.create!(name: "AP English Language")
# CvSubject.create!(name: "AP English Literature")
# CvSubject.create!(name: "AP European History")
# CvSubject.create!(name: "AP US History")
# CvSubject.create!(name: "AP Economics")
# CvSubject.create!(name: "AP Government/Politics")
# CvSubject.create!(name: "AP Psychology")
# CvSubject.create!(name: "AP Human Geography")
# CvSubject.create!(name: "AP Calculus AB")
# CvSubject.create!(name: "AP Calculus BC")
# CvSubject.create!(name: "AP Statistics")
# CvSubject.create!(name: "AP Biology")
# CvSubject.create!(name: "AP Chemistry")
# CvSubject.create!(name: "AP Physics 1")
# CvSubject.create!(name: "AP Physics 2")
# CvSubject.create!(name: "AP Physics C")
# CvSubject.create!(name: "AP Environmental Science")
# CvSubject.create!(name: "AP French Language")
# CvSubject.create!(name: "AP German Language")
# CvSubject.create!(name: "AP Spanish Language (7-8)")
# CvSubject.create!(name: "AP Spanish Literature (9-10)")