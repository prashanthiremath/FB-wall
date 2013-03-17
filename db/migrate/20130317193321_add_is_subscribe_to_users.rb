class AddIsSubscribeToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :is_subscribe, :boolean, :default => 0
  end
end
