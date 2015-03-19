class ConfirmEmailController < ApplicationController
	include Devise
	before_filter :authenticate_user!, except: [:confirm]

	skip_before_action :set_user_by_auth_token, only: [:confirm]
  skip_after_action :update_auth_header, only: [:confirm]

  def new
	   self.resource = resource_class.new
	end

	def confirm
		confirm_params
		confirmation_token = Devise.token_generator.digest(self, :confirmation_token, params[:token])
		user = User.find_by(confirmation_token: confirmation_token)
		user.confirmed_at = Time.now.utc
		user.save

		redirect_to ENV["FRONTEND_URL"]
	end

	private
		def confirm_params
			params.permit(:token)
		end
end
