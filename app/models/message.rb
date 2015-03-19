class Message < ActiveRecord::Base
	belongs_to :sender, class_name: "User"
	belongs_to :reciever, polymorphic: true
end
