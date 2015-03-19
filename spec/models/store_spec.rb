require 'rails_helper'

RSpec.describe Store, :type => :model do
	let(:store){Store.new}
	
	describe "checks associations" do
		it {expect(store).to belong_to(:creator)}
		it {expect(store).to have_many(:owners)}

  	it {expect(store).to have_many(:deals)}
  	it {expect(store).to have_many(:orders)}
  	it {expect(store).to have_many(:messages)}
  	it {expect(store).to have_many(:reviews)}
  	it {expect(store).to have_many(:deals)}

  	it {expect(store).to have_many(:items_with_deal)}
  	it {expect(store).to have_many(:ordered_items)}
  end

end
