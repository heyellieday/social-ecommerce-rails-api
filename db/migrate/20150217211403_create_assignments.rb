class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
    	t.references :assignment
    	t.references :role
    	
      t.timestamps null: false
    end
  end
end
