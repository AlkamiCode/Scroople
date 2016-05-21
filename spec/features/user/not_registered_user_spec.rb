require "rails_helper"

RSpec.feature "Not Registered User", :type => :feature do
  scenario "visits theme page and tries to select theme" do
    visit themes_path

    # fill_in "Name", :with => "Screwdriver"
    first(".thumbnail").click_link("Select")

    # within(".tool_info")
    #   expect(page).to have_content("Screwdriver")
    # end
  end
end
