require 'rails_helper'

RSpec.describe Role, :type => :model do
  let(:role){Role.new}
	
	describe "checks associations" do
		it {expect(role).to have_many(:users)}
	end
end
