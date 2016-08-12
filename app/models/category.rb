class Category < ApplicationRecord
    has_many :items
    validates_associated :items
    validates :name, presence: { message: "Category name must be given please" }, :length => { :minimum => 2 }
end
