# == Schema Information
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  email                  :string(255)     default(""), not null
#  first_name             :string(255)     default(""), not null
#  last_name              :string(255)     default(""), not null
#  role                   :string(255)     default("hacker"), not null
#  encrypted_password     :string(255)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime        not null
#  updated_at             :datetime        not null
#  hacker_score           :integer         default(0)
#
# Indexes
#
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#

class User < ActiveRecord::Base
  # Hacker Relationships
  has_many :interests, class_name: 'Technology', dependent: :destroy
  has_many :achievements, foreign_key: 'hacker_id', dependent: :destroy
  has_one  :will_work_for, class_name: 'Compensation', foreign_key: 'hacker_id', dependent: :destroy

  # Biz Monkey Relationships
  has_many :looking_for, class_name: 'Technology', dependent: :destroy
  has_many :projects, foreign_key: 'biz_monkey_id', dependent: :destroy
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :first_name, :last_name, :score, :password, :password_confirmation, :remember_me
  validates       :first_name, :last_name, presence: true, length: { maximum: 50 }
  
  ROLES = %W[hacker biz_monkey legit_startup]
  validates_presence_of  :role
  validates_inclusion_of :role, in: ROLES
  
  # All Users 
  def role? (role)
    self.role.to_sym == role
  end
  
  ROLES.each do |role_name|
    define_method "is_#{role_name}?" do
      self.role == role_name
    end
  end
  
  # Class Functions
  def self.hackers
    where(role: "hacker")
  end
  
  # Hacker Functions
  
  def calculate_hacker_score
    #TODO: write this!
    0
  end 

  def calculate_hacker_rate
    #TODO: write this!
    0
  end
end
