class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name, null: false
      t.text :description, null: false
      t.string :product_image, null: false
      t.bigint :inventory, null: false
      t.monetize :price, null: false
      t.references :seller, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
