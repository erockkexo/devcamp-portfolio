class Skill < ApplicationRecord

#to bring in the placeholder concern => placeholder.rb
include Placeholder

	validates_presence_of :title, :percent_utilized

	#We started with adding a database entry: rails g migrations add_badge_to_skills

	#now we want to add defaults 
	after_initialize :set_defaults 

	def set_defaults 
		self.badge ||= Placeholder.image_generator(height: '250', width: '250')
	end
end
