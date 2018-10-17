require 'rails_helper'

RSpec.feature "Visitor navagates to the product", type: :feature, js: true do
  
  before :each do 
    @category = Category.create!    
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
  end
  scenario "Visitor clicks on the product" do
    visit root_path

    first('article.product').find_link("Details").click
    save_and_open_screenshot
  end
end
