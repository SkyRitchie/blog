class Post < ActiveRecord::Base
	has_many :comments

	validates :body, presence: true
	validates :title, presence: true

	def self.from_param(param)
		where(author: NameCase(param))
	end

	def published?
		publication.present? and url.present? and published_at.present?
	end
end
