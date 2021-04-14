class OrdersController < ApplicationController
  def index
  end

  def new
    @order = Order.new
    @customer = current_customer
  end
  
  def confirm
      @tax = 1.1
      @order = Order.new
      @order.payment_method = params[:order][:payment_method]
      @cart_items = current_customer.cart_items

 
    if params[:order][:address_option] == "1"
    @addresses = current_customer.addresses.find(params[:order][:addresses])
    @order.address = @addresses.address
    @order.name = @addresses.name
    @order.postal_code = @addresses.postal_cade
   
    
    
    elsif params[:order][:address_option] == "2"
      @order.postal_code = params[:order][:postal_code]  
      @order.address = params[:order][:address]  
      @order.name = params[:order][:name]
    
    elsif params[:order][:address_option] == "0"
      
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
