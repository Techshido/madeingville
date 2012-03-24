class RenameAchievmentCategoryInAchievements < ActiveRecord::Migration
  def change
    rename_column :achievements, :achievement_category, :category
    rename_index :achievements, :index_achievements_on_achievement_category, :index_achievements_on_category
  end
end
