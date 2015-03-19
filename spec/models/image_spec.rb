require 'rails_helper'

RSpec.describe Image, :type => :model do
    let(:image){Image.new}
	
	describe "checks associations" do
		it {expect(image).to belong_to(:item)}
	end
end
