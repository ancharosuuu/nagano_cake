class ItemsController < ApplicationController
  def index
    @tax = 1.1
    @items = Item.all
  end

  def new
  end

  def show
    @tax = 1.1
    @item = Item.find(params[:id])
  end

  def edit
  end
  
  
  private
 def item_params
    params.require(:item).permit(:name, :image, :introduction, :price, :is_active, :genre_id)
 end
 
end
