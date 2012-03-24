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
  COOL_SHIT = %W[internship open_source real_world contest published_paper class]
  
  validates_presence_of   :hacker_id, :type
  validates_inclusion_of  :type, in: COOL_SHIT
  validates_uniqueness_of [:hacker_id, :type] 
end
