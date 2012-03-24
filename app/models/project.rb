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
#
# Indexes
#
#  index_projects_on_biz_monkey_id  (biz_monkey_id)
#

class Project < ActiveRecord::Base
  belongs_to :biz_monkey, class_name: 'User'
  
  attr_accessible :website, :description  

  validates_presence_of   :biz_monkey_id, :description
end
