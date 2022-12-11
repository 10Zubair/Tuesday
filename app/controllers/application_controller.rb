class ApplicationController < ActionController::Base
	# before_action :print_display_message

	# after_action :print_after_display_message
	# private

	# def print_display_message
	# 	puts "I am a inherited before action filter"
	# end

	# def print_after_display_message
	# 	puts "**********I  am after_action  filter ********"
	# end

	protected
	def after_sign_in_path_for(resource)
		admin_dashboard_path
		
	end
end
