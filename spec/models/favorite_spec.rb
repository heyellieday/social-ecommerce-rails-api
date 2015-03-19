require 'rails_helper'

RSpec.describe Favorite, :type => :model do
    let(:favorite){Favorite.new}
	
	describe "checks associations" do
		it {expect(favorite).to belong_to(:user)}
		it {expect(favorite).to belong_to(:item)}
	end
end
