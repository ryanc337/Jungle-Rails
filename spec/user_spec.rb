require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    # subject { User.create(email: "hello@gmail.com", name: "Tom", password: "password", password_confirmation: "password") }
    
    it 'should check the db to make sure the email is unqiue' do
      should validate_uniqueness_of(:email)
    end

    it 'should ensure name is present' do
      should validate_presence_of(:name)
    end

  end
end