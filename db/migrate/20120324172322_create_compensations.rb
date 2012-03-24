class CreateCompensations < ActiveRecord::Migration
  def change
    create_table :compensations do |t|
      t.integer     :hacker_id
      t.string      :type

      t.timestamps
    end

    add_index :compensations, :hacker_id
  end
end
