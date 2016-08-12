class Seller < ApplicationRecord
    has_many :items, dependent: :destroy
    validates_associated :items
    validates :name, presence: { message: "Seller name must be given please" }, :length => { :minimum => 2 }
    validates_numericality_of :latitude, :greater_than_or_equal_to => -90, :less_than_or_equal_to => 90
    validates_numericality_of :longitude, :greater_than_or_equal_to => -180, :less_than_or_equal_to => 180
end
