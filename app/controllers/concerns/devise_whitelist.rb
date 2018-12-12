# has to be the same name as the file. 
#The first letter must also be Capitalized. 

module DeviseWhitelist
	# This will give us all the ActiveSupport methods in the Concern Module.
	extend ActiveSupport::Concern

	included do 
		before_action :configure_permitted_parameters, if: :devise_controller? 
	end

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name])
	end

end