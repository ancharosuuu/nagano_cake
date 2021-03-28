class HomesController < ApplicationController
 def top
  @tax = 1.1
  @items = Item.all
 end 
 def about
 end
 
 
end
