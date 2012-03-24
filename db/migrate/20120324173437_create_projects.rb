class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer       :biz_monkey_id
      t.text          :description
      t.string        :website
      t.timestamps
    end

    add_index :projects, :biz_monkey_id
  end
end
