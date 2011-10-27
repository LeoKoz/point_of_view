# == Schema Information
#
# Table name: themes
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  desc       :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Theme < ActiveRecord::Base
	belongs_to :board
	belongs_to :user
	has_many :statements
	
	validates :user_id, :presence => true
	validates :board_id, :presence => true
	
	default_scope :order => 'themes.created_at DESC'
	

end
