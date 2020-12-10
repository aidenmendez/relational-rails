require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit '/schools/:id'" do
    it "I see a school's attributes" do 
      school_1 = School.create!(
          name: "Strive Prep", 
          number_of_teachers: 30, 
          is_public: false  
      )

      visit "/schools/#{school_1.id}"

      expect(page).to have_content("#{school_1.name}")
      expect(page).to have_content("#{school_1.id}")
      expect(page).to have_content("#{school_1.number_of_teachers}")
      expect(page).to have_content("#{school_1.is_public}")
    end
    it "I see a link to edit the school" do 
         school_1 = School.create!(
          name: "Strive Prep", 
          number_of_teachers: 30, 
          is_public: false  
      )

      visit "/schools/#{school_1.id}"

      expect(page).to have_link("Update School")

      click_link "Update School"
      expect(current_path).to eq("/schools/#{school_1.id}/edit")
    end

    it " I see a link to delete the school" do 
          school_1 = School.create!(
          name: "Strive Prep", 
          number_of_teachers: 30, 
          is_public: false  
      )
     
      visit "/schools/#{school_1.id}"
      
      expect(page).to have_link("Delete School")
      click_link "Delete School"
     
      expect(current_path).to eq("/schools")
      expect(page).to_not have_content(school_1.name)
    end 
  end
end







