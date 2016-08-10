class Item < ApplicationRecord
    has_one :category
    has_one :item_status
    has_one :seller
end
