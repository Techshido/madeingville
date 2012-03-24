class RenameScoreToHackerScore < ActiveRecord::Migration
  def change
    rename_column :users, :score, :hacker_score
  end
end
