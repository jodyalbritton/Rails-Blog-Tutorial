class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :slug, :title, :user_id, :tag_list
  
  acts_as_taggable
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_many :comments
  
  
  def comment_count
    self.comments.length
  end 
  
  def comment_list
    self.comments.where(:content == !nil && :spam == false)
  end
end
