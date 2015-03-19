class AddInstagramToUser < ActiveRecord::Migration
  def change
    add_column :users, :instagram_url, :string
  end
end
