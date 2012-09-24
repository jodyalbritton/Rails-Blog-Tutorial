class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post
      t.string :name
      t.string :email
      t.text :content
      t.boolean :approved
      t.boolean :spam

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
