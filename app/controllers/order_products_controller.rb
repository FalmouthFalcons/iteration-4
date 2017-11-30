class OrderProductsController < ApplicationController

  def index
      @order_product = OrderProduct.all
  end

  def get_shopping_cart
      @user = User.find(session[:user_id])
      @product = Product.find(params[:id])
      @products = Product.all
  end

  def show
      puts  @order_product = OrderProduct.find(params[:id])

  end

  

  private
  def product_params
      params.require(:product).permit(:title, :category, :type, :price, :delivery, :city, :description)
  end

end
