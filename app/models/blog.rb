class Blog < ApplicationRecord
	enum status: { draft: 0, publish: 1 }
	extend FriendlyId
	friendly_id :title, use: :slugged

	#wont create without a title and body
	validates_presence_of :title, :body

	belongs_to :topic
end
