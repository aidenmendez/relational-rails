require 'rails_helper'

describe "as a user ", type: :feature do 
  describe "when I visit /garages" do   
    let!(:garage) do
      Garage.create!(
        address: "155 N St", 
        name: "Not A Lot' Parking Garage", 
        spot_count: 200, 
        cost: 12,
        multi_level: true
      )
    end

    let!(:garage_2) do
      Garage.create!(
        address: "152 S St", 
        name: "Different Garage", 
        spot_count: 100, 
        cost: 10,
        multi_level: true
      )
    end
   
    it "can filter list of qualifying garages by threshold" do
      visit "/garages"
      fill_in :threshold, with:200
      click_button "Filter"

      expect(page).to have_content(garage.name)
      expect(page).not_to have_content(garage_2.name)

    end

    it "links to All Customers" do
      visit "/garages"
      click_on "All Customers"
      expect(current_path).to eq('/customers')
    end

    it "links to All Garages" do
      visit "/garages"
      click_on "All Garages"
      expect(current_path).to eq('/garages')
    end

    it "links to New Garage" do
      visit "/garages"
      click_on "New Garage"
      expect(current_path).to eq('/garages/new')
    end

    it "can sort garages by number of customers" do
      visit "/garages"
      click_on "Sort by number of customers"

      expect("Not A Lot' Parking Garage").before come_before
    end
  end
end