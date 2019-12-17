class User < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :name, presence: true
end
