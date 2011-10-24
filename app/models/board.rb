# == Schema Information
#
# Table name: boards
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  theme_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Board < ActiveRecord::Base
	belongs_to :user
	has_many :themes
	
	validates :user_id, :presence => true
end
