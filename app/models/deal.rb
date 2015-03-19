class Deal < ActiveRecord::Base
	belongs_to :store

	has_many :deal_items
	has_many :items, through: :deal_items
end
