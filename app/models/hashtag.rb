class Hashtag < ActiveRecord::Base
  belongs_to :campaign
end

# == Schema Information
#
# Table name: hashtags
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  campaign_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#
