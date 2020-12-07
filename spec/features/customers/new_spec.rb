require "rails_helper"

RSpec.describe "As a user" type: :feature do
  describe "When I visit /customers/new" do
    it "can create a new customer" do
      visit "/customers/new"
      fill_in "Name", with: "Sally Campos"
      fill_in "License plate", with: "C-379D"
      fill_in "Member since", with: "2018"
      fill_in "Currently parked", with: "false"
      click_button "create customer"

      expect(current_path).to eq("/customers")

      # visit "/customers/#{Customer.last.id}"
    end
end
