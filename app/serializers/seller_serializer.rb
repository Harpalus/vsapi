class SellerSerializer < ActiveModel::Serializer
  attributes :id, :name, :longitude, :latitude
end