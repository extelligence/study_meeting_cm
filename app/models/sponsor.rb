class Sponsor < ActiveRecord::Base
  has_many :ads
  has_many :meetups, :through => :ads
  validates_uniqueness_of :email
  validates :name, :presence => true
  validates :email, :presence => true
end

# == Schema Information
#
# Table name: sponsors
#
#  id         :integer         not null, primary key
#  email      :string(255)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

