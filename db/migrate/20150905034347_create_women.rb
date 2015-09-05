class CreateWomen < ActiveRecord::Migration
  def change
    create_table :women do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
