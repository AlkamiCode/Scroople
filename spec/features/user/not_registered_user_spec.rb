require "rails_helper"

RSpec.feature "Not Registered User", :type => :feature do
  scenario "visits theme page and tries to select theme" do
    visit themes_path

    # fill_in "Name", :with => "Screwdriver"
    first(".thumbnail").click_link("Select")
    # within(".some-class")
    #   expect(page).to have_content("Agency")
    # end
  end

  scenario "visits theme page from themes page" do
    visit themes_path
    first(".thumbnail").click_link("Preview")
    expect(current_path).to eq(themes_agency_path)
      expect(page).to have_content("Logo")
    expect(page).to have_link("Explore Theme")
  end
end
