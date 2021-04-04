class OrdersController < ApplicationController
  def index
  end

  def new
    @order = Order.new
    @customer = current_customer
  end
  
  def confirm
    if params[:order][:address_option] == "1"
   #まだ記述できてない
    
    
    elsif params[:order][:address_option] == "2"
      @order = Order.new
      @order.postal_code = params[:order][:postal_code]  
      @order.address = params[:order][:address]  
      @order.name = params[:order][:name]
    
    else
      
    @orders = Order.all
    @order = Order.new(order_comfirm_params) 
    @order.total_payment = 100 #あとで計算する
    @order.shipping_cost = 800
    @order.address = current_customer.address
    @order.postal_code = current_customer.postal_code
    @order.name = current_customer.last_name + " " + current_customer.first_name
    @order.customer_id = current_customer.id
    @order.status = 0
    
    end 
        
      
  end  
  
  def create
    @order = Order.new
    @order.save
    redirect_to order_confirm_path(@order)
  end
  

  def show
  end
  
  private
 def order_params
    params.require(:order).permit(:postal_code, :address, :name, :shipping_cost, :total_payment, :payment_method)
 end
 
 def order_comfirm_params
    params.permit(:postal_code, :address, :name, :shipping_cost, :total_payment, :payment_method)
 end
 
end
