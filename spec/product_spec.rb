require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    product = Product.new()
    category = Category.new()

    it 'is not valid without a name' do 
      product.price = 100
      product.quantity = 5
      product.category_id = 1
      expect(product).to_not be_valid
    end

    it 'is not valid without a price' do
      product.name = "jeeff"
      product.quantity = 3
      product.category_id = 1
      expect(product).to_not be_valid
    end

    it 'is not valid without a quantity' do
      product.name = "tangerine"
      product.category_id = 1
      product.price = 6000
      expect(product).to_not be_valid
    end

    it 'is not valid without a category' do
      product.name = 'more expensive tangerine'
      product.quantity = 1
      product.price = 6500
      expect(product).to_not be_valid
    end

  end
end




# "name"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at"