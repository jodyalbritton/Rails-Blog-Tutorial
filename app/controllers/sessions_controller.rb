class SessionsController < Devise:: SessionsController
  before_filter :find_config 
   protected
 
  def find_config
    @site_config = SiteConfig.where(:config_name => 'Default').first_or_create# GET /posts
  end 
end