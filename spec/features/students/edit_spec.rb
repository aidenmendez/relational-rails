require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit '/students/:id/edit'" do
    it "I am able to edit a student" do 
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

      visit "/students/#{student_1.id}/edit"

      fill_in "Grade", with: "9"
      
      click_button "Update Student"
     
      expect(current_path).to eq("/students/#{student_1.id}")
      expect(page).to have_content("Grade: 9")
    end
  end 
end 

