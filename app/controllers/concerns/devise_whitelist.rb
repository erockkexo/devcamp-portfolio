# has to be the same name as the file. 
#The first letter must also be Capitalized. 

module DeviseWhitelist
	# This will give us all the ActiveSupport methods in the Concern Module.
	extend ActiveSupport::Concern

	included do 
		before_filter :configure_permitted_parameters, if :devise_controller? 
	end

	def configer_permitted_paramters
		devise_paramater_sanitizer.permit(:sign_up, keys: [:name])
		devise_paramater_sanitizer.permit(:account_update, keys [:name])
	end

end