require 'rails_helper'

RSpec.describe "garage_customers index page", type: :feature do
  it "can see all customers belonging to a garage" do
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
      member_since: 2012,
      currently_parked: true
      )

    customer_2 = garage_1.customers.create!(
      name: 'Sally Campos',
      license_plate: 'C-379D',
      member_since: 2016,
      currently_parked: true
      ) 
      visit "/garages/#{garage_1.id}/customers"

      expect(page).to have_content("Customers")
      expect(page).to have_content(customer_1.name)
      expect(page).to have_content("License plate: #{customer_1.license_plate}")
      expect(page).to have_content("Member since: #{customer_1.member_since}")
      expect(page).to have_content("Currently parked: #{customer_1.currently_parked}")

      expect(page).to have_content(customer_2.name)
      expect(page).to have_content("License plate: #{customer_2.license_plate}")
      expect(page).to have_content("Member since: #{customer_2.member_since}")
      expect(page).to have_content("Currently parked: #{customer_2.currently_parked}")
  end
end