class CreateTruths < ActiveRecord::Migration
  def change
    create_table :truths do |t|
    	t.references :user
    	t.string :post_text
    	
      t.timestamps null: false
    end
  end
end
