class Subscriber < ActiveRecord::Base
  belongs_to :campaign
end

# email
# twitter
# phone

# == Schema Information
#
# Table name: subscribers
#
#  id          :integer          not null, primary key
#  email       :string(255)
#  twitter     :string(255)
#  phone       :string(255)
#  campaign_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#
