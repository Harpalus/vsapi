class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :published_date
end
