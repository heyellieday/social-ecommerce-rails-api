class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.references :item
    	t.string 		 :image_ref

      t.timestamps null: false
    end
  end
end
