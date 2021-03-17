class Item < ApplicationRecord
  attachment :image
  belongs_to :genre
  has_many :cart_items
  
  enum is_active: {
    
    "販売中":true, "販売停止中":false
    
  }
  
end
