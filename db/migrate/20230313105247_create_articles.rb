class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
    	t.string :article_id
      t.string :title
      t.text :description
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
