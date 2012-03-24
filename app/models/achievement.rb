# == Schema Information
#
# Table name: achievements
#
#  id                   :integer         not null, primary key
#  hacker_id            :integer
#  achievement_category :string(255)
#  description          :text
#  created_at           :datetime        not null
#  updated_at           :datetime        not null
#
# Indexes
#
#  index_achievements_on_type       (achievement_category)
#  index_achievements_on_hacker_id  (hacker_id)
#

class Achievement < ActiveRecord::Base
  belongs_to :hacker, class_name: 'User'
  
  POINTS_LISTING = {
    employed:        {points: 50, hint: "List each full time coding/designing/hacking positions"},
    internship:      {points: 25, hint: "List each internships or part time coding/designing/hacking positions"},
    open_source:     {points: 20, hint: "List each open source project you've contributed to"},
    live_project:    {points: 20, hint: "List each project that's live right now"},
    published_paper: {points: 15, hint: "List each published journal paper where you're listed as an author"},
    contest:         {points: 10, hint: "List each programming contest or hackathion you've attended"},
    relevant_course: {points:  2, hint: "List each upper level programming/engineering/design course you've taken"}
  }

  CATEGORIES = POINTS_LISTING.keys.map(&:to_s)
  
  validates_presence_of   :hacker_id, :category
  validates_inclusion_of  :category, in: CATEGORIES
  
  attr_accessible :category, :description
end
