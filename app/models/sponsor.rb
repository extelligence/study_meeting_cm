class Sponsor < ActiveRecord::Base
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

