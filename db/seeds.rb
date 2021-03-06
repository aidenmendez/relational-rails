# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Garage.destroy_all 
Customer.destroy_all 

School.destroy_all 
Student.destroy_all 

garage_1 = Garage.create!(
      address: "155 N St", 
      name: "'Not A Lot' Parking Garage", 
      spot_count: 200, 
      cost: 12,
      multi_level: true
    )

garage_2 = Garage.create!(
        name: "'Right On So Many Levels' Indoor Parking",
        address: "3701  Ripple Street",
        spot_count: 324,
        cost: 20,
        multi_level: false
)

garage_1.customers.create!(
        name: 'Liz Meyers',
        license_plate: 'F-912G',
        member_since: 12,
        currently_parked: true
        )

garage_1.customers.create!(
        name: 'Sally Campos',
        license_plate: 'C-379D',
        member_since: 2018,
        currently_parked: true
        )

garage_1.customers.create!(
        name: 'Tenisha Kehl',
        license_plate: 'W-350I',
        member_since: 2012,
        currently_parked: true
        )

garage_2.customers.create!(
        name: 'Charles Stanley',
        license_plate: 'L-860G',
        member_since: 2019,
        currently_parked: true
)

garage_2.customers.create!(
        name: 'Caleb Brooks',
        license_plate: 'W-128F',
        member_since: 2007,
        currently_parked: true
)

garage_2.customers.create!(
  name: 'Yolanda Hedberg',
  license_plate: 'K-143I',
  member_since: 2013,
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

student_3 = Student.create!(
          name: "Itachi Uchiha", 
          grade: 7,
          in_district: true,
          school_id: school_1.id 
)

student_4 = Student.create!(
          name: "Mikasa Ackerman", 
          grade: 7,
          in_district: true,
          school_id: school_1.id 
)

