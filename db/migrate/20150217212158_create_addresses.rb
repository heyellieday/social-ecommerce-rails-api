class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.references :user

    	t.string 			:kind
    	t.string			:line_1
    	t.string			:line_2
    	t.string			:city
    	t.string			:state
    	t.integer			:zip_code
      t.references  :store

      t.timestamps null: false
    end
  end
end
