class OrdersController < ApplicationController
  def index
  end

  def new
    @order = Order.new
    @customer = current_customer
  end
  
  def create
    @order = Order.new
    @order.save
    redirect_to orders_path
  end

  def show
  end
  
  private
 def order_params
    params.require(:order).permit(:order_id, :item_id, :price, :amount, :making_status)
 end
 
end
