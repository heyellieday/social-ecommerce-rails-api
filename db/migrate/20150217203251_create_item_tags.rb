class CreateItemTags < ActiveRecord::Migration
  def change
    create_table :item_tags do |t|
    	t.references :item
    	t.references :tag
    	
      t.timestamps null: false
    end
  end
end
