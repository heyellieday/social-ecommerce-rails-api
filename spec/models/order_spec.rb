require 'rails_helper'

RSpec.describe Order, :type => :model do
  let(:order){Order.new}
	
	describe "checks associations" do
		it {expect(order).to belong_to(:buyer)}
		it {expect(order).to belong_to(:store)}
		it {expect(order).to have_many(:items)}
	end
end
