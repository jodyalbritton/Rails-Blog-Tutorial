class AddConfigToSiteConfigs < ActiveRecord::Migration
  def change
    add_column :site_configs, :config_name, :string
  end
end
