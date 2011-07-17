class Staff < ActiveRecord::Base
  validates_uniqueness_of :email
  validates :name, :presence => true
  validates :email, :presence => true
end
