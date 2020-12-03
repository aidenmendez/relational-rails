# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
garage_1 = Garage.create!(address: "155 N St", name: "We Park it", spot_count: 200, cost: 12)
customer_1 = Customer.create!(
        garage_id: garage_1.id,
        member_since: 12,
        # currently_parked: true
)
customer_2 = Customer.create!(
  garage_id: garage_1.id,
  member_since: 8,
  currently_parked: true
)

school_1 = School.create!(
          name: "Strive Prep", 
          number_of_teachers: 30, 
          is_public: false       
)

student_1 = Student.create!(
          name: "Naruto Uzumaki", 
          grade: 8, 
          in_district: true, 
          school_id: school_1.id
)

student_2 = Student.create!(
          name: "Tanjiro Kamado", 
          grade: 7,
          in_district: true,
          school_id: school_1.id 
)