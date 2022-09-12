class ApplicationController < ActionController::Base
	before_action :set_current_user
	def set_current_user
		# finds user with session data and stores it if present
		Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
	end

	# restrict access to admin module for non-admin users
	def authenticate_admin_user!
		#raise SecurityError unless current_user.try(:admin?)
		#rescue_from SecurityError do |exception|
		#	redirect_to root_url
		#end
	end

	# path for redirection after user sign_in, depending on user role
	def after_sign_in_path_for(user)
		#user.admin? ? admin_dashboard_path : root_path 
	end
end
