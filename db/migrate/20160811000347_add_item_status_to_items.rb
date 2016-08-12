class AddItemStatusToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :item_status, foreign_key: true
  end
end
