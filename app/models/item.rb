class Item < ActiveRecord::Base
	belongs_to :store
	# belongs_to :owner, through: :store

	has_many :images

	has_many :order_items
	has_many :orders, through: :order_items
	has_many :buyers, through: :orders

	has_many :cart_items
	has_many :carts, through: :cart_items
	has_many :owners, through: :carts

	has_many :item_categories
	has_many :categories, through: :item_categories

	has_many :item_tags
	has_many :tags, through: :item_tags

	has_many :favorites
	has_many :favorite_users, through: :favorites

	has_many :reviews, as: :reviewable

	serialize :details
end
