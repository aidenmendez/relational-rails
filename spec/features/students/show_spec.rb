require 'rails_helper'


# Then I see the child with that id including the child's attributes:
RSpec.describe "As a visitor" do
  describe "When I visit '/students/:id" do 
    it " I see a student's attributes" do 
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

      visit "/students/#{student_1.id}"
save_and_open_page
      expect(page).to have_content("#{student_1.name}")
      expect(page).to have_content("#{student_1.grade}")
      expect(page).to have_content("#{student_1.in_district}")

      expect(page).to have_content("#{student_2.name}")
      expect(page).to have_content("#{student_2.grade}")
      expect(page).to have_content("#{student_2.in_district}")
    end
  end
end