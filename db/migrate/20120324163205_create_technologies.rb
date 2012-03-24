class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.integer :user_id
      t.string  :type
      t.text    :description
      
      t.timestamps
    end
    
    add_index :technologies, :user_id
    add_index :technologies, :type
    
  end
end
