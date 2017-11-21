class User < ApplicationRecord
  
  has_secure_password

  validates_uniqueness_of :email
  validates_presence_of :city

  # A Customer can have many payment types.
  has_many :payment_types
  has_many :products
end
