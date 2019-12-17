class User < ActiveRecord::Base
  attr_accessor :password 
  has_secure_password
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :name, presence: true
  validates_length_of :password, minimum: 5, on: :create
end
