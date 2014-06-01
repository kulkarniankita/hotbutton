class Campaign < ActiveRecord::Base
  has_one :background
  has_many :links

  has_many :subscribers
  has_many :hashtags

end


# name
# belongs_to user
# activation date
# expiration date

# == Schema Information
#
# Table name: campaigns
#
#  id              :integer          not null, primary key
#  created_at      :datetime
#  updated_at      :datetime
#  activation_date :datetime
#  expiration_date :datetime
#
