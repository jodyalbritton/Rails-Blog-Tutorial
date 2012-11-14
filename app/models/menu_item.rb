class MenuItem < ActiveRecord::Base
  attr_accessible :published, :slug, :target, :target_type, :weight
  
  belongs_to :menu
  belongs_to :target, :polymorphic => true
  
end
