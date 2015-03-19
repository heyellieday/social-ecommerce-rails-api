class CreateStoreFollows < ActiveRecord::Migration
  def change
    create_table :store_follows do |t|

      t.timestamps null: false
    end
  end
end
