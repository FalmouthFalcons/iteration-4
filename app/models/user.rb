class User < ApplicationRecord
  has_secure_password

  validates_uniqueness_of :email

  # A Customer can have many payment types.
  has_many :payment_types
  has_many :orders
  has_attached_file :product_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :product_image, content_type: /\Aimage\/.*\z/
end
