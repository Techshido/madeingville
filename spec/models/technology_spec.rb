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

require 'spec_helper'

describe Technology do
  pending "add some examples to (or delete) #{__FILE__}"
end
