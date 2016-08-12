class ItemStatus < ApplicationRecord
    has_many :items
    validates_associated :items
    validates :name, presence: { message: "Item Status name must be given please" }
end
