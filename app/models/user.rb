require 'carrierwave/orm/activerecord'
class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User

  validates :username, uniqueness: true

  validate :unique_name

  extend FriendlyId
  friendly_id :username

  mount_uploader :banner_image, UserBannerUploader

  mount_uploader :image, UserImageUploader

  has_one :unique_name

  has_many :hashtags

  has_many :relationships, foreign_key: "follower_id"
  has_many :following, through: :relationships, source: :followed

  has_many :assignments
  has_many :roles, through: :assignments

  has_many :addresses

  has_many :truths

  has_many :created_stores, class_name: "Stores", foreign_key: "creator_id"
  has_many :store_owners
  has_many :stores, through: :store_owners, foreign_key: "owner_id"
  has_many :items, through: :stores, source: :owner

  has_many :orders, foreign_key: "buyer_id"
  has_many :ordered_items, through: :orders
  has_many :items_ordered, through: :ordered_items, source: :items

  has_many :carts
  has_many :cart_items, through: :carts
  has_many :items_in_cart, through: :cart_items, source: :items

  has_many :favorites
  has_many :favorite_items, through: :favorites, source: :items

  has_many :messages, foreign_key: "sender_id"
  has_many :messages, as: :reciever

  def unique_name
    self.errors.add(:username, 'is already taken') if Store.where(store_handle: self.username).exists?
  end
end