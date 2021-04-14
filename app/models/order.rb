class Order < ApplicationRecord
    enum payment_method: {クレジット:1, 現金:2}
end