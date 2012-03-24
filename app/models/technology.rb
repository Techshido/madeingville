# == Schema Information
#
# Table name: technologies
#
#  id          :integer         not null, primary key
#  user_id     :integer
#  type        :string(255)
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#
# Indexes
#
#  index_technologies_on_type     (type)
#  index_technologies_on_user_id  (user_id)
#

class Technology < ActiveRecord::Base
  belongs_to :user
  
  TECH_STACK = %W[web_dev ios android]
  
  validates_presence_of :user_id, :type
  validates_inclusion_of :type, in: TECH_STACK
  validates_uniqueness_of [:user_id, :type]
end
