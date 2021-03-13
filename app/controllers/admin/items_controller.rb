class Admin::ItemsController < ApplicationController
    
  def new
    @admin_item = Admin::Item.new
  end

  def create
    @admin_item = Admin::Item.new(admin_item_params)
    @admin_item.save
    redirect_to admin_items_path
  end

  def index
  end

  def show
  end

  def destroy
  end
  
  private

  def admin_item_params
    params.require(:admin_item).permit(:genre_id, :name, :image, :introduction, :price, :is_active)
  end
  
end
