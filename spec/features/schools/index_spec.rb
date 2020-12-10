require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit '/schools'" do
    it "I see the name of each school record" do 
      school_1 = School.create!(
          name: "Strive Prep", 
          number_of_teachers: 30, 
          is_public: false 
      )

      visit "/schools"

      expect(page).to have_content("#{school_1.name}")
    end 
    it "I see a link to create a new school" do 
     
    visit "/schools"

     click_link 'New School'

     expect(current_path).to eq('/schools/new')
    end
  end
end
