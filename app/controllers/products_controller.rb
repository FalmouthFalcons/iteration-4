class ProductsController < ApplicationController

    # makes new instance for new products that is referd to in the view.
    def new 
        @product = Product.new
    end 
    # "create" lets you take in new params and save them to database.
    def create
        @product = Product.new(product_params)
        if @product.save
        redirect_to @product
        # "else" makes sure product params are satisfied, will not let you save invalid data to database.
        else 
            render 'new'
        end
    end 

    # makes sure the product_params are not accesable to user.
    private
    def product_params
        params.require(:product).permit(:title, :category, :type, :price, :delivery, :city)
    end

end
