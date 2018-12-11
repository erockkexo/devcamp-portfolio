module Placeholder
	#load in some helper modules
	extend ActiveSupport::Concern

	#this will be created so that we can call Placeholder.image_generator
	#now we can just call Placeholder.image_generator(yx) instead of placing
	#a url which is much cleaner
	def self.image_generator(height:, width:)
		"http://placehold.it/#{height}x#{width}"
	end
end

