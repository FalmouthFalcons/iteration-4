class ProductType < ApplicationRecord
    has_many :products
    validates_presence_of :category

end
