class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.text 				:message_text
    	t.references 	:sender_id

    	t.references :reciever, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
