module ApplicationHelper
	def sample_helper
		"<p>My helper</p>".html_safe
	end

	def user_check

    if current_user.is_a?(User) 
    	link_to "Logout", destroy_user_session_path, method: :delete 
    else 
    	( link_to "Log in", new_user_session_path ) + "<br>".html_safe +
    	( link_to "Sign up", new_user_registration_path )
     end 
	end

    def source_helper
        if session[:source]
            greeting = "Thanks for visiting me from #{session[:source]}"
            content_tag(:div, greeting, class: "source")
        end 
    end

end
