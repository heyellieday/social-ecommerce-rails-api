require 'rails_helper'

RSpec.describe Review, :type => :model do
  let(:review){Review.new}
	
	describe "checks associations" do
		it {expect(review).to belong_to(:sender)}
		it {expect(review).to belong_to(:reviewable)}
	end
end
