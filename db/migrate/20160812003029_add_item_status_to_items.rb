class AddItemStatusToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :itemStatus, foreign_key: true
  end
end
