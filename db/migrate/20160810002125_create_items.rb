class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.float :price
      t.timestamp :published_date

      t.timestamps
    end
  end
end
