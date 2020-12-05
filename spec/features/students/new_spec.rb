require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit '/schools/new'" do
    it "I am able to create a school" do 
      visit '/schools/new'

      fill_in "Name", with: "Newland"
      fill_in "Number of teachers", with: "15"
      fill_in "Is public", with: 'true'
      
      click_button "Create School"
      
      expect(current_path).to eq("/schools")
    end
  end 
end 