class CreateItemStatuses < ActiveRecord::Migration[5.0]
  
  def change
    create_table :item_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
