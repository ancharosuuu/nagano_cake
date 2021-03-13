class Admin::Item < ApplicationRecord
  belongs_to :admin
  attachment :cake_image
end
