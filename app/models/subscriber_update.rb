class SubscriberUpdate < ActiveRecord::Base
  after_commit :send_notifications



def send_notifications
  short_data = "twitter/sms stuff here"
  long_data = "email body"
  subject = "email subject"
  true
  # send stuff in here
end

end

# message
# date

# twilio and sendgrid stuff?

# == Schema Information
#
# Table name: subscriber_updates
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  title      :string(255)
#  body       :text
#
