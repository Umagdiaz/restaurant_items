require 'rails_helper'

RSpec.feature "Admin Log in", type: :feature do
let!(:admin) { Admin.create(email: "admin@example.com", password: "password") }

    it "allows valid admin to Log in" do
        visit new_admin_session_path

        fill_in "Email", with: admin.email
        fill_in "Password", with: admin.password
        click_button "Log in"

        expect(page).to have_link("Log out")
        expect(page).to have_link("Items")
        expect(page).to have_link("Categories")
    end

    it "not show Sign up and show the rest" do
        visit new_admin_session_path

        expect(page).not_to have_link("Sign up")
        expect(page).to have_link("Forgot your password?")
        expect(page).to have_button("Log in")
    end
end    