require 'rails_helper'

describe "as a user", type: :feature do 
  describe "can specify spot count threshold" do
    
    let!(:garage) do
      Garage.create!(
        address: "155 N St", 
        name: "'Not A Lot' Parking Garage", 
        spot_count: 200, 
        cost: 12,
        multi_level: true
      )
    end

    let!(:garage_2) do
      Garage.create!(
        address: "152 S St", 
        name: "'Different", 
        spot_count: 100, 
        cost: 10,
        multi_level: true
      )
    end
   
    it "shows user list of qualifying garages" do
      visit "/garages"
      fill_in :threshold, with:200
      click_button "Filter Garages"

      expect(page).to have_content(garage.name)
      expect(page).not_to have_content(garage_2.name)

    end
  end
end