class CreateStoreOwners < ActiveRecord::Migration
  def change
    create_table :store_owners do |t|
    	t.references :user
    	t.references :store
    	
      t.timestamps null: false
    end
  end
end
