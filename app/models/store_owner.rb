class StoreOwner < ActiveRecord::Base
	belongs_to :store
	belongs_to :owner, class_name: "User"
end
