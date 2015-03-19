class DealItem < ActiveRecord::Base
	belongs_to :item
	belongs_to :deal
end
