class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :site_name
      t.references :user
      t.boolean :offline

      t.timestamps
    end
    add_index :settings, :user_id
  end
end
