class CreateUserTags < ActiveRecord::Migration
  def change
    create_table :user_tags do |t|
    	t.references :user
    	t.references :tag
    	
      t.timestamps null: false
    end
  end
end
