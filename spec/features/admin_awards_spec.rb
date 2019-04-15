require 'rails_helper'

RSpec.describe "As an admin, " do
  describe "I can see a form to add a new award," do
    it "I can add a new award" do
      user = User.create!(username: 'admin_1', password: 'password', role: 1)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit awards_path

      fill_in "Name", with: "Worst Song of the Year"

      click_on "Submit"
      expect(current_path).to eq(awards_path)
      expect(page).to have_content("Worst Song of the Year")
    end
  end
end
