class Link < ActiveRecord::Base
  belongs_to :campaign
end

# name
# url
# description

# == Schema Information
#
# Table name: links
#
#  id          :integer          not null, primary key
#  created_at  :datetime
#  updated_at  :datetime
#  name        :string(255)
#  url         :string(255)
#  description :string(255)
#  campaign_id :integer
#
