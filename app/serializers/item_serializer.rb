class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :published_date
  belongs_to  :category
  belongs_to  :item_status
  belongs_to  :seller
end
