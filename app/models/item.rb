class Item < ApplicationRecord
    belongs_to  :category
    belongs_to  :item_status
    belongs_to  :seller
end
