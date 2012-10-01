class SiteSettings < ActiveRecord::Base
  attr_accessible :config_name, :site_name, :site_owner
end
