require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    password_confirmation = "password"
    password = "password"
    it 'should check the db to make sure the email is unqiue' do
      should validate_uniqueness_of(:email)
    end

    it 'should ensure name is present' do
      should validate_presence_of(:name)
    end

    it "should ensure that password is same as password_confirmation" do 
      expect(password).to eq 'password'
    end

    it "should expect password to have minimum length" do
      should validate_length_of(:password).
        is_at_least(5).
        on(:create)
    end
  end
end