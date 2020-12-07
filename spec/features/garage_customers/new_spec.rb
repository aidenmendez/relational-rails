require "rails_helper"

RSpec.describe "As a user", type: :feature do
  describe "when I visit /garages/id/customers/new" do
    it "can create a new customer for the garage" do
      garage_1 = Garage.create!(
        address: "155 N St", 
        name: "'Not A Lot' Parking Garage", 
        spot_count: 200, 
        cost: 12,
        multi_level: true
      )

      visit "/garages/#{garage_1.id}/customers/new"

      fill_in "Name", with: "Sally Campos"
      fill_in "License plate", with: "C-379D"
      click_button "Create Customer"

      expect(current_path).to eq("/garages/#{garage_1.id}/customers")
      expect(page).to have_content(Customer.last.name)

      # visit "/customers/#{Customer.last.id}"
    end
  end
end
