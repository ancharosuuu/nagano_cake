class CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
  end
  
  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to cart_item_path(@cart_item)
  end   
  
  def create
    @cart_item = CartItem.new
    # @genre = Genre.new(genre_params)
    @cart_item.save
    redirect_to cart_items_path
  end
  

  
  def destroy
  end
  
  private
  def cart_item_params
    params.require(:cart_item).permit(:amount, :image, :customer_id)
  end

  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price, :is_active, :genre_id)
  end
 
      
end
