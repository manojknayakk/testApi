class ImportProductDataFromCsv < ActiveRecord::Migration[6.0]
  require 'csv'

  def change
    change_column_default :products, :created_at, -> { 'CURRENT_TIMESTAMP' }
    change_column_default :products, :updated_at, -> { 'CURRENT_TIMESTAMP' }
    
    products = []
    CSV.foreach( "#{Rails.root}/lib/product_details.csv", headers: true ) do |row|
      product = {
        name: row.values_at[0], 
        material_code: row.values_at[1], 
        product_category_code: row.values_at[2], 
        status: row.values_at[3].downcase == "true",
      }
      Product.upsert( product, unique_by: :material_code )
    end
  end
end
