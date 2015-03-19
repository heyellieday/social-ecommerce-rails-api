require 'rails_helper'

RSpec.describe Category, :type => :model do
    let(:category){Category.new}
	
	describe "checks associations" do
		it {expect(category).to has_many(:items)}
	end
end
