require 'rails_helper'

RSpec.feature "View all", type: :feature do
  it "is clickable" do
    visit root_path

    click_link "View all"

    expect(page).to have_content("List of items")
  end
end
