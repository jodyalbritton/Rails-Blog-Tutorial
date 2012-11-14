class Page < ActiveRecord::Base
  attr_accessible :content, :published, :published_on, :slug, :title
  
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_many :menu_items, :as => :target
end
