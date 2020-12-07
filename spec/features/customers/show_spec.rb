require "rails_helper"

RSpec.describe "customer show page", type: :feature do
  it "can show a customer's name and info" do
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

      visit "/customers/#{customer_1.id}"
      expect(page).to have_content(customer_1.name)
      expect(page).to have_content("License plate: #{customer_1.license_plate}")
      expect(page).to have_content("Member since: #{customer_1.member_since}")
      expect(page).to have_content("Currently parked: #{customer_1.currently_parked}")
      expect(page).to have_content("Parking Garage: #{customer_1.garage.name}")
  end
end