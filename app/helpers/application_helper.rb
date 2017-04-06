module ApplicationHelper
	# Redirect stored location
    def redirect_back_or(default)
		redirect_to(session["forwarding_url"] || default)
		session.delete(:forwarding_url)
	end

	# Store request url
	def store_location
		session[:forwarding_url] = request.url if request.get?
	end
end
