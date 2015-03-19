class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.references :user
    	t.text 			 :review_text
    	t.references :reviewable, polymorphic: true, index: true
    	
      t.timestamps null: false
    end
  end
end
