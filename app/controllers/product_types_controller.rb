class ProductTypesController < ApplicationController

  def index
      # gets number of items in each category for show page

      # @products_count = Product.group(:category).count(:category)
      # This might work
      @product_types = ProductType.all
      @products_count = Product.all.group(:product_type_id).count
      puts @products_count
      puts @product_types
      @first_three = []
      @category_products = Product.all.group(:product_type_id).limit(3)
      # @category_products = @product_types
      puts @category_products
      @first_three.push(@category_products)
      # @product_total = Product.all(:product_type_id)
      # @product_number = ProductType.count(:category)
      # Model.distinct.pluck(:rating)

  end

  def show
      @product_types = ProductType.find(params[:id])
  end

  def new
      @product_types = ProductType.new
  end

    # method for category listings
  def categoryshow
      @products = Products.all
      @categories = @products.product_type_id

  end

  private
    def product_params
        params.permit(:product_type)

    end
end
