class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
    	t.references :user
    	t.integer		 :total_price
    	
      t.timestamps null: false
    end
  end
end
