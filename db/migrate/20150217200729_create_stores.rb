class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
    	t.string 			:name
    	t.string			:tagline
    	t.text	 			:description
    	t.string			:logo_img
    	t.string			:banner_img

    	t.string			:site_url
    	t.string			:phone

    	t.string			:email
    	t.string			:password

    	t.references 	:owner

      t.timestamps null: false
    end
  end
end
