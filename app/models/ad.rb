class Ad < ActiveRecord::Base
  belongs_to :meetup
  belongs_to :sponsor
end
