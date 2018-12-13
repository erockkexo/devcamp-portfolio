# has to be the same name as the file. 
#The first letter must also be Capitalized. 

module SetSource
	# This will give us all the ActiveSupport methods in the Concern Module.
	extend ActiveSupport::Concern

	included do
		before_action :set_source
	end

	def set_source
		session[:source] = params[:q] if params[:q]
	end

end

