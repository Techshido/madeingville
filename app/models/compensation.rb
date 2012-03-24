# == Schema Information
#
# Table name: compensations
#
#  id         :integer         not null, primary key
#  hacker_id  :integer
#  type       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#
# Indexes
#
#  index_compensations_on_hacker_id  (hacker_id)
#

class Compensation < ActiveRecord::Base
  belongs_to :hacker, class_name: 'User'
  
  PAYMENT_METHODS = %W[cash experience equity]
  
  validates_presence_of   :hacker_id, :type
  validates_inclusion_of  :type, in: PAYMENT_METHODS
end
