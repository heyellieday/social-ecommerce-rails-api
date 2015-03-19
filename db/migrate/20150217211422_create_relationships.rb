class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
    	t.references :follower
    	t.references :followed
    	
      t.timestamps null: false
    end
  end
end
