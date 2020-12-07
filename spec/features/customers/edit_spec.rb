require "rails_helper"

RSpec.describe "As a user", typer: :feature do
  describe "when I visit customers/:id/edit" do
    it "can edit an existing customer" do

      garage_1 = Garage.create!(
        address: "155 N St", 
        name: "'Not A Lot' Parking Garage", 
        spot_count: 200, 
        cost: 12,
        multi_level: true
      )
  
      customer_1 = garage_1.customers.create!(
        name: 'Liz Meyers',
        license_plate: 'F-912G',
        member_since: 12,
        currently_parked: true
      )

      visit "/customers/#{customer_1.id}/edit"

      fill_in "License plate", with: "F-915C"
      click_button "Update Customer"

      expect(current_path).to eq("/customers/#{customer_1.id}")
      expect(page).to have_content("License plate: F-915C")
    end
  end
end