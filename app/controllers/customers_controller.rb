class CustomersController < ApplicationController
 def index
 end

  
  def show
   @customer = current_customer
  end  

  def edit
   @customer = current_customer 
  end

  def update
   @customer = current_customer
    @customer.update(customer_params)
    redirect_to customers_my_page_path
  end

  def unsubscribe
  end

  def withdraw
  end
  
 private
 def customer_params
    params.require(:customer).permit(:email, :encrypted_password, :last_name, :first_name, :last_name_kana, :first_name_kana, :potal_cade, :address, :telephone_number, :is_deleted)
 end
 
end
