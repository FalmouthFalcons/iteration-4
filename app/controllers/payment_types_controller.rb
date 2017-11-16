class PaymentTypesController < ApplicationController
    def new
        @payment_type = PaymentType.new
    end
    def create
        @user = User.find(session[:user_id])
        @payment = PaymentType.create(payment_type_params)
        @payment.customer_id = @user.id
        if @payment.save
        redirect_to @payment
        else 
            render :new
        end
    end
    private
    def payment_type_params
      params.require(:payment_type).permit(:payment, :account_number, :user_id)
    end
end
