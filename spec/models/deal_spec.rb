require 'rails_helper'

RSpec.describe Deal, :type => :model do
  let(:deal){Deal.new}
	
	describe "checks associations" do
		it {expect(deal).to belong_to(:store)}
		it {expect(deal).to have_many(:items)}
	end
end
