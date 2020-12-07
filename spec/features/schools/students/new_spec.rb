require 'rails_helper'

RSpec.describe "As a visitor" do 
  describe "When I visit 'schools/:id/students/new' " do 
    it "I am able to create a new student " do 
          school_1 = School.create!(
          name: "Strive Prep", 
          number_of_teachers: 30, 
          is_public: false  
          ) 

      visit ("schools/#{school_1.id}/students/new")

      fill_in "Name", with: "Nezuko"
      fill_in "Grade", with: "6"
      fill_in "In district", with: 'true'

 
      click_button "Create Student"
      expect(current_path).to eq("/schools/#{school_1.id}/students")
    end
  end
end