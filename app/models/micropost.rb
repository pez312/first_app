class Micropost < ActiveRecord::Base
	#attr_accessible :content, :user_id      #Rails 4.1 does not use mass assignment any more
	belongs_to :user
	validates :content, :length => { :maximum => 140 }
end
