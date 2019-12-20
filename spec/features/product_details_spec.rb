RSpec.feature "Visitor navigates to product details page from home page", type: :feature, js: true do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'
    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99git 
      )
    end
  end
  scenario "They are linked to the product detaisl page" do
    visit root_path
    # find('.btn btn-default pull-right', :visible => false).click
    save_screenshot
    # expect(page).to have_css 'article.product', count: 10
  end
end