class Statement < ActiveRecord::Base
	belongs_to :theme
	belongs_to :user
	
	validates :user_id, :presence => true
	validates :theme_id, :presence => true
	
	attr_accessible :theme_id
	
end
