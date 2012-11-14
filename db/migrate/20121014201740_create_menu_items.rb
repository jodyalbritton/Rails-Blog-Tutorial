class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.integer :menu_id
      t.integer :target_id
      t.string :slug
      t.string :target_type
      t.integer :weight
      t.boolean :published

      t.timestamps
    end
  end
end
