class ItemPolicy 

	attr_reader :user, :item

	def initialize(user, item)
		@user = user
		@item = item
	end

	def create?
		user.owner? or not item.available?
	end
end