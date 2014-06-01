
class SubscriberUpdate < ActiveRecord::Base

  belongs_to :campaign


end

# message
# date

# twilio and sendgrid stuff?

# == Schema Information
#
# Table name: subscriber_updates
#
#  id          :integer          not null, primary key
#  created_at  :datetime
#  updated_at  :datetime
#  title       :string(255)
#  body        :text
#  short_data  :text
#  long_data   :text
#  subject     :text
#  campaign_id :integer
#
# Indexes
#
#  index_subscriber_updates_on_campaign_id  (campaign_id)
#
