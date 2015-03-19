class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
    	t.references :cart
    	t.references :item
    	
      t.timestamps null: false
    end
  end
end
