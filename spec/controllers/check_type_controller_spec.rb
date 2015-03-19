require 'rails_helper'

RSpec.describe CheckTypeController, :type => :controller do
	describe 'GET /check_type' do
	username = "jp"
	user = User.new(username, password: 'password', password_confirmation: 'password')	
	store_slug = "thestore"
	store = Store.new(store_handle: store_slug)

	it "returns type user from slug" do
		get "/check_type/check_type?slug=#{username}"

		expect(response.type).to eq "users"
	end

	it "shows store page from slug" do
		get "/check_type/check_type?slug=#{store_slug}"

		expect(response.type).to eq "stores"
	end

	it "returns 500 status if slug doesn't belong to user or shop"
		expect(response.status).to eq(500)
	end
end
