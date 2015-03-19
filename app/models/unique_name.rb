class UniqueName < ActiveRecord::Base
	validates_uniqueness_of :name
	belongs_to :user
	belongs_to :store
end
