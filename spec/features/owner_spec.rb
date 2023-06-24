require 'rails_helper'

RSpec.feature "Owner", type: :feature do
  it "is clickable and redirects to admin session path" do
    visit root_path

    click_link "owner"

    expect(page).to have_current_path(admin_session_path)
  end
end