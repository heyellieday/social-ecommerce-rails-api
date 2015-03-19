class CreateUniqueNames < ActiveRecord::Migration
  def change
    create_table :unique_names do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
