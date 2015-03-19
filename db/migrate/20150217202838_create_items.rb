class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string 			:name
    	t.text				:description
      t.text        :details
    	t.float  			:price
    	t.references 	:store

      t.boolean     :featured, default: false

      t.boolean     :sale, default: false
      t.float       :sale_price
    	
      t.timestamps null: false
    end
  end
end
