class CheckTypeController < ApplicationController
	def check
		@store = Store.find_by(store_handle: params[:slug])
		@user = User.find_by(username: params[:slug])
		if @store != nil
			type = "stores"
		elsif @user != nil
			type = "users"
		else
			render json: {errors: "Not a valid slug"}, :status => 500
			return
		end
		render json: {type: type}
	end
end
