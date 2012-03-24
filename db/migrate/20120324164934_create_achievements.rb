class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.integer :hacker_id
      t.string  :type
      t.text    :description
            
      t.timestamps
    end
    
    add_index :achievements, :hacker_id
    add_index :achievements, :type    
  end
end
