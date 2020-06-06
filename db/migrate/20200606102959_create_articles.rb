class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.text :description
      t.text :url
      t.text :image_url
      t.timestamp :publish_at
      t.text :content

      t.timestamps
    end
    add_index :articles, :title, unique: true
  end
end
