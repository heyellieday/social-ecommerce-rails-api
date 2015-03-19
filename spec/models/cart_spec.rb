require 'rails_helper'

RSpec.describe Cart, :type => :model do
    let(:cart){Cart.new}
	
	describe "checks associations" do
		it {expect(cart).to belong_to(:owner)}
		it {expects(cart).to have_many(:items)}
	end
end
