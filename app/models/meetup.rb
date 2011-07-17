class Meetup < ActiveRecord::Base
  has_many :ads
  has_many :sponsors, :through => :ads
  validates :date, :presence => true
  validates :name, :presence => true
  validates :location, :presence => true
  validates :capacity, :presence => true
  validates :group_name, :presence => true
  validates :site_url, :presence => true
end

# == Schema Information
#
# Table name: meetups
#
#  id         :integer         not null, primary key
#  date       :datetime
#  name       :string(255)
#  location   :string(255)
#  capacity   :integer
#  group_name :string(255)
#  site_url   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

