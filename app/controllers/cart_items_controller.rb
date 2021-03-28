class CartItemsController < ApplicationController
  def index
    @tax = 1.1
    @cart_items = CartItem.all
  end
  
  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to cart_item_path(@cart_item)
  end   
  
  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    # @genre = Genre.new(genre_params)
    @cart_item.save
    redirect_to cart_items_path
  end
  

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path
  end
  
  def destroy_all
    @cart_items = CartItem.all
    @cart_items.destroy_all
    redirect_to cart_items_path
  end
  
private
  def cart_item_params
    params.require(:cart_item).permit(:amount, :customer_id, :item_id)
  end

  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price, :is_active, :genre_id)
  end
end
 
      

