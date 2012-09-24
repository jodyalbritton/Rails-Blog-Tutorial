class Comment < ActiveRecord::Base

  attr_accessible :approved, :content, :email, :name, :spam, :post_id
  
    belongs_to :post
    
    

  
end
