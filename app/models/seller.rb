class Seller < ApplicationRecord
    has_many :items, dependent: :destroy
    validates_associated :items
    validates :name, presence: { message: "Seller name must be given please" }
    validates :latitude, presence: { message: "latitude must be given please" }
    validates :longitude, presence: { message: "longitude must be given please" }
end
