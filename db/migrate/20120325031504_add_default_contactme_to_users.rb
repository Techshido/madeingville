class AddDefaultContactmeToUsers < ActiveRecord::Migration
  def change
    change_column :users, :contact_me, :boolean, default: false
  end
end
