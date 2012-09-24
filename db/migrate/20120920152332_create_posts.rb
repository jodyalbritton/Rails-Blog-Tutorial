class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :slug
      t.references :user

      t.timestamps
    end
    add_index :posts, :user_id
    add_index :posts, :slug
  end
end
