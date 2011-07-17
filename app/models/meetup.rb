class Meetup < ActiveRecord::Base
  has_many :ads
  has_many :sponsors, :through => :ads
end
