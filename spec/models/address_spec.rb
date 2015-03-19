require 'rails_helper'

RSpec.describe Address, :type => :model do
  let(:address){Address.new}
	
	describe "checks associations" do
		it {expect(address).to belong_to(:user)}
	end
end
