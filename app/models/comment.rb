class Comment < ActiveRecord::Base
	belongs_to :picture
	belongs_to :user

	validate :body, presence: true
end
