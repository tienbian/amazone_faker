class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :slug
      t.decimal :master_price
      t.decimal :cost_price
      t.string :cost_currency
      t.datetime :available_on
      t.string :sku
      t.integer :category_id
      t.string :product_image

      t.timestamps null: false
    end
  end
end
