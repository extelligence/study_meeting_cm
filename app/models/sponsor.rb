class Sponsor < ActiveRecord::Base
  has_many :ads
  has_many :meetups, :through => :ads
  validates_uniqueness_of :email
  validates :name, :presence => true
  validates :email, :presence => true
end
