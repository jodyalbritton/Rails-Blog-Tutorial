class Category < ActiveRecord::Base
  attr_accessible :name, :slug
  
  has_many :posts
  
  extend FriendlyId
  friendly_id :name, use: :slugged
end
