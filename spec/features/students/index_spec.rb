require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do

  describe "When I visit '/students'" do

    it "I see all students and it's attributes" do 
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


      visit "/students"

      expect(page).to have_content("#{student_1.name}")
      expect(page).to have_content("#{student_1.grade}")
      expect(page).to have_content("#{student_1.in_district}")

      expect(page).to have_content("#{student_2.name}")
      expect(page).to have_content("#{student_2.grade}")
      expect(page).to have_content("#{student_2.in_district}")

      expect(page).to have_content("#{student_3.name}")
      expect(page).to have_content("#{student_3.grade}")
      expect(page).to have_content("#{student_3.in_district}")

      expect(page).to have_content("#{student_4.name}")
      expect(page).to have_content("#{student_4.grade}")
      expect(page).to have_content("#{student_4.in_district}")
    end 
end 

