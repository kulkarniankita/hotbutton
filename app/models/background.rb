class Background < ActiveRecord::Base
  belongs_to :campaign

end


# text block
# associated with user
# image

# == Schema Information
#
# Table name: backgrounds
#
#  id          :integer          not null, primary key
#  created_at  :datetime
#  updated_at  :datetime
#  body        :text
#  campaign_id :integer
#  image       :string(255)
#
