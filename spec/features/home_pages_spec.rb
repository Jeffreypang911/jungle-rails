require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

  scenario "They see all products" do
    visit root_path

    # commented out b/c it's for debugging only
    save_and_open_screenshot

    expect(page).to have_css 'article.product', count: 10
  end

end