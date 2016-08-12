class Item < ApplicationRecord
  belongs_to  :category
  belongs_to  :itemStatus
  belongs_to  :seller
  
  validates :category, :itemStatus, :seller, presence: true
  validates :title, presence: { message: "Title must be given please" }, :length => { :minimum => 2 }
  validates :description, presence: { message: "Description must be given please" }, :length => { :minimum => 2 }
  validates_numericality_of :price, :greater_than_or_equal_to => 0
  
  scope :items,-> { select('items.id, items.title, items.description, round(items.price, 2) as price, items.published_date, categories.name as "category name", item_statuses.name as "status name", sellers.name as "seller name"')
                .joins(:itemStatus, :category, :seller) }
  scope :getItem, ->(itemid) { where("items.id = ?", itemid) }
  scope :getCategoryItems, ->(categid) { where("categories.id = ?", categid) }
  scope :getSoldItems, ->(itemStatusid, sellerid) { where("items.itemStatus_id = ? AND sellers.id = ?", itemStatusid, sellerid) }
end
