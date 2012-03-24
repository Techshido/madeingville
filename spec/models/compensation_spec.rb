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

require 'spec_helper'

describe Compensation do
  pending "add some examples to (or delete) #{__FILE__}"
end
