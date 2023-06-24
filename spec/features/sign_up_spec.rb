require 'rails_helper'

RSpec.feature "Admin sign up", type: :feature do

  it "Admin not created" do
    visit new_admin_session_path

    expect(page).to have_link("Sign up")
  end
end

