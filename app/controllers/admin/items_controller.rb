class Admin::ItemsController < ApplicationController
    
  def new
    @item = Item.new
    @genres = Genre.all
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admin_items_path
  end

  def index
  end

  def show
  end

  def destroy
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price, :is_active, genre_ids: [])
    params.require(:item).permit(hogehoge,{genre_ids: []})
  end
  
end
