class CreateDealItems < ActiveRecord::Migration
  def change
    create_table :deal_items do |t|
    	t.references :item
    	t.references :deal
    	
      t.timestamps null: false
    end
  end
end
