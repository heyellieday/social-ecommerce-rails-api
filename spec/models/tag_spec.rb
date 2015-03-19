require 'rails_helper'

RSpec.describe Tag, :type => :model do
  let(:tag){Tag.new}
	
	describe "checks associations" do
		it {expect(tag).to have_many(:items)}
	end
end
