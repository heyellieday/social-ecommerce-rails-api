class Cart < ActiveRecord::Base
	belongs_to :owner

	has_many :cart_items
	has_many :items, through: :cart_items 
end
