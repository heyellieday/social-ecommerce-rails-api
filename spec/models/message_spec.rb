require 'rails_helper'

RSpec.describe Message, :type => :model do
  let(:message){Message.new}
	
	describe "checks associations" do
		it {expect(message).to belong_to(:sender)}
		it {expect(message).to belong_to(:reciever)}
	end
end
