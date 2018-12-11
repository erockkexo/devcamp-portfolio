class Portfolio < ApplicationRecord

	#this adds the technology model to the portfolio model
	has_many :technologies

	#data validation
	#do not accept this attribute if the attribute "name" is empty
	#we only used the name attribute because that's all of the attrs technology has
	accepts_nested_attributes_for 	:technologies, 
									reject_if: lambda { |attrs| attrs['name'].blank? }

	include Placeholder

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
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
	end
end
