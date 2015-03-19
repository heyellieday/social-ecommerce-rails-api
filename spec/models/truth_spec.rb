require 'rails_helper'

RSpec.describe Truth, :type => :model do
  let(:truth){Truth.new}
	
	describe "checks associations" do
		it {expect(truth).to belong_to(:user)}
	end
end
