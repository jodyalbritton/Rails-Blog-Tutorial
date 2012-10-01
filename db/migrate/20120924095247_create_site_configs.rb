class CreateSiteConfigs < ActiveRecord::Migration
  def change
    create_table :site_configs do |t|
      t.string :name
      t.string :site_name

      t.timestamps
    end
  end
end
