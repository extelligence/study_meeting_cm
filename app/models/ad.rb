class Ad < ActiveRecord::Base
  belongs_to :meetup
  belongs_to :sponsor
  belongs_to :playlist
end

# == Schema Information
#
# Table name: ads
#
#  id         :integer         not null, primary key
#  meetup_id  :integer
#  sponsor_id :integer
#  name       :string(255)
#  second     :integer
#  url        :string(255)
#  ec_order   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

