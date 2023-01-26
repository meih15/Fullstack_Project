class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :comment
      t.integer :rating, null: false
      
      t.timestamps
    end
  end
end
