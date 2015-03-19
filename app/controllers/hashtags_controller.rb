class HashtagsController < BaseController
	private

      def hashtag_params
        params.permit(:name, :user_id)
      end

      def query_params
        params.permit(:user_id)
      end

      # Use callbacks to share common setup or constraints between actions.
      def set_resource(resource = nil)
        resource ||= resource_class.friendly.find(params[:id])
        instance_variable_set("@#{resource_name}", resource)
      end
end
