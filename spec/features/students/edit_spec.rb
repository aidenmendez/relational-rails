require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit '/schools/:id/students/edit'" do
    it "I am able to add a new student" do 
          school_1 = School.create!(
          name: "Strive Prep", 
          number_of_teachers: 30, 
          is_public: false  
      )

      visit "/schools/#{school_1.id}/edit"

      fill_in "Number of teachers", with: "35"
      
      click_button "Update School"
     
      expect(current_path).to eq("/schools/#{school_1.id}")
      expect(page).to have_content("Number of Teachers: 35")
    end
  end 
end 

