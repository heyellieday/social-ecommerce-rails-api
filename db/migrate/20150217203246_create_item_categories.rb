class CreateItemCategories < ActiveRecord::Migration
  def change
    create_table :item_categories do |t|
    	t.references :item
    	t.references :categories
    	
      t.timestamps null: false
    end
  end
end
