class Admin::CustomersController < ApplicationController
  def index
      @customers = Customer.all
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  
  private
  def cutsomer_params
    params.require(:cutsomer).permit(:last_name, :first_name, :id, :email)
  end
end

