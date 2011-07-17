class Meetup < ActiveRecord::Base
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

