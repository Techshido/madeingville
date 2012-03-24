# == Schema Information
#
# Table name: technologies
#
#  id          :integer         not null, primary key
#  user_id     :integer
#  skill       :string(255)
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#
# Indexes
#
#  index_technologies_on_type     (skill)
#  index_technologies_on_user_id  (user_id)
#

class Technology < ActiveRecord::Base
  belongs_to :user
  
  TECH_STACK = %W[web_application web_front_end ios android graphic_design]
  
  validates_presence_of :user_id, :skill
  validates_inclusion_of :skill, in: TECH_STACK
  # validates_uniqueness_of [:user_id, :skill]
  
  attr_accessible :skill, :description
end
