require 'rails_helper'

RSpec.describe "customer index page", type: :feature do
  it "can see all customer names and attributes" do
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

    customer_2 = garage_1.customers.create!(
      name: 'Sally Campos',
      license_plate: 'C-379D',
      member_since: 8,
      currently_parked: true
      ) 


    visit "/customers"

    expect(page).to have_content(customer_1.name)
    expect(page).to have_content("License plate: #{customer_1.license_plate}")
    expect(page).to have_content("Member since: #{customer_1.member_since}")
    expect(page).to have_content("Currently parked: #{customer_1.currently_parked}")

    expect(page).to have_content(customer_2.name)
    expect(page).to have_content("License plate: #{customer_2.license_plate}")
    expect(page).to have_content("Member since: #{customer_2.member_since}")
    expect(page).to have_content("Parking Garage: #{customer_1.garage.name}")
    expect(page).to have_content("Currently parked: #{customer_2.currently_parked}")
  end
end