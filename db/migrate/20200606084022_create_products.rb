class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :material_code
      t.string :product_category_code
      t.boolean :status, default: false

      t.timestamps
    end
    add_index :products, :material_code, unique: true
  end
end
