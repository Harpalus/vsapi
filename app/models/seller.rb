class Seller < ApplicationRecord
    has_many :items, dependent: :destroy
end
