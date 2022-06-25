class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :ramen_image
      t.string :shop_name
      t.string :address
      t.string :shop_memo
      t.integer :shop_score
      t.date :visited_date
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
