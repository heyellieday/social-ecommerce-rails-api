class Store < ActiveRecord::Base
	belongs_to :creator, class_name: "User"

	validates :store_handle, uniqueness: true

  validate :unique_name

	has_many 	 :store_owners
	has_many 	 :owners, through: :store_owners

	has_many :items

	has_many :deals
	has_many :deal_items, through: :deals
	has_many :items_with_deal, through: :deal_items, source: :items

	has_many :orders
	has_many :order_items, through: :orders
	has_many :ordered_items, through: :ordered_items, source: :item

	has_many :messages, as: :reciever
	has_many :reviews, as: :reviewable

	def unique_name
    self.errors.add(:store_handle, 'is already taken') if User.where(username: self.store_handle).exists?
  end
end
