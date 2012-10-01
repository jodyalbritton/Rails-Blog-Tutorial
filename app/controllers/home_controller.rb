class HomeController < ApplicationController
  before_filter :find_config
  def index
         @site_config = SiteConfig.where(:config_name => 'Default').first_or_create

  end
  
  protected
  
  def find_config
    
  end
end
