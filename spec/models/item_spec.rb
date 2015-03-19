require 'rails_helper'

RSpec.describe Item, :type => :model do
    let(:item){Item.new}
	
	describe "checks associations" do
		it {expect(item).to belongs_to(:store)}

		it {expect(item).to have_many(:images)}
		it {expect(item).to have_many(:orders)}
		it {expect(item).to have_many(:buyers)}
		it {expect(item).to have_many(:carts)}
		it {expect(item).to have_many(:categories)}
		it {expect(item).to have_many(:tags)}
		it {expect(item).to have_many(:favorites)}
		it {expect(item).to have_many(:favorite_users)}
		it {expect(item).to have_many(:reviews)}
		it {expect(item).to have_many(:cart_owners)}
	end
end
