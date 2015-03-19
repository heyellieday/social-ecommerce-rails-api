class UsersController < BaseController
	 private

      def user_params
        params.permit(:username, :image)
      end

      def query_params
        params.permit(:username)
      end

      # Use callbacks to share common setup or constraints between actions.
      def set_resource(resource = nil)
        resource ||= resource_class.friendly.find(params[:id])
        instance_variable_set("@#{resource_name}", resource)
      end
end
