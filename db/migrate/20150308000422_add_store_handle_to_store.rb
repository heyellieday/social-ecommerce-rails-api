class AddStoreHandleToStore < ActiveRecord::Migration
  def change
  	add_column :stores, :store_handle, :string
  end
end
