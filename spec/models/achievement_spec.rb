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

require 'spec_helper'

describe Achievement do
  pending "add some examples to (or delete) #{__FILE__}"
end
