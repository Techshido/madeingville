# == Schema Information
#
# Table name: achievements
#
#  id          :integer         not null, primary key
#  hacker_id   :integer
#  type        :string(255)
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#
# Indexes
#
#  index_achievements_on_type       (type)
#  index_achievements_on_hacker_id  (hacker_id)
#

class Achievement < ActiveRecord::Base
  belongs_to :hacker, class_name: 'User'
  
  # Turn into a hash that has point values
  POINTS_LISTING = {
    employed:        50,
    internship:      25,
    open_source:     20,
    live_project:    20,
    contest:         10,
    published_paper: 10,
    relevant_course:  5
  }
  
  CATEGORIES = POINTS_LISTING.keys.map(&:to_s)
  
  validates_presence_of   :hacker_id, :type
  validates_inclusion_of  :type, in: CATEGORIES
  validates_uniqueness_of [:hacker_id, :type]
  
  attr_accessible :type, :description
end
