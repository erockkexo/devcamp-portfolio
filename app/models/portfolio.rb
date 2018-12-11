class Portfolio < ApplicationRecord

	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular
		where( subtitle: "Angular")
	end

	def self.ruby
		where( subtitle: "Ruby on Rails")
	end

	#after a instance has been initialized we can set the defaults
	after_initialize :set_defaults

	#create the method "set_defaults"
	def set_defaults
		#when ever you are creating a new portfolio item (nothing else)
		#||= means if nil, replace with this:
		self.main_image ||= "http://placehold.it/600x400"
		self.thumb_image ||= "http://placehold.it/350x200"
	end
end
