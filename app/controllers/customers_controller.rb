class CustomersController < ApplicationController
 def index
 end

  
  def show
   @customer = current_customer
  end  

  def edit
    
  end

  def update
  end

  def unsubscribe
  end

  def withdraw
  end
  
 private
 def customer_params
    params.require(:cutomer).permit(:email, :encrypted_password, :last_name, :first_name, :last_name_kana, :first_name_kana, :potal_cade, :address, :telephone_number, :is_deleted)
 end
 
end
