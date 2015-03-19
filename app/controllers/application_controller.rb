
class ApplicationController < ActionController::Base
	include "pundit"
	
	protect_from_forgery
	before_filter :configure_permitted_parameters, if: :devise_controller?

	helper_method :policy

	protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :name
      devise_parameter_sanitizer.for(:sign_up) << :username
      devise_parameter_sanitizer.for(:account_update) << :name
    end

		def policy(record)
		  "#{record.class}Policy".constantize.new(current_user, record)
		end
end
