class RenameTypeColumns < ActiveRecord::Migration
  def change
    rename_column :technologies, :type, :skill
    rename_index :technologies, :index_technologies_on_type, :index_technologies_on_skill
    rename_column :compensations, :type, :method
    rename_column :achievements, :type, :achievement_category
    rename_index :achievements, :index_achievements_on_type, :index_achievements_on_achievement_category
  end
end
