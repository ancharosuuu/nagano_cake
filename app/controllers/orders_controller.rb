class OrdersController < ApplicationController
  def index
  end

  def new
    @order = Order.find(params[:id])
  end

  def show
  end
  
  private
 def order_params
    params.require(:order).permit(:order_id, :item_id, :price, :amount, :making_status)
 end
 
end
