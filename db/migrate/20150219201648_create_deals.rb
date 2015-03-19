class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
    	t.references :store
    	t.datetime 	 :start_at
    	t.datetime	 :end_at 
    	t.text			 :description
    	
      t.timestamps null: false
    end
  end
end
