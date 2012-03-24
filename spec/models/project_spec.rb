# == Schema Information
#
# Table name: projects
#
#  id            :integer         not null, primary key
#  biz_monkey_id :integer
#  description   :text
#  website       :string(255)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#  name          :string(255)
#
# Indexes
#
#  index_projects_on_biz_monkey_id  (biz_monkey_id)
#

require 'spec_helper'

describe Project do
  pending "add some examples to (or delete) #{__FILE__}"
end
