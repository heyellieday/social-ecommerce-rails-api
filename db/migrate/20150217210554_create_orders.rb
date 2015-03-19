class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.references :buyer
    	t.references :store
    	t.integer		 :total_price
    	t.datetime 	 :date_placed
    	
      t.timestamps null: false
    end
  end
end
