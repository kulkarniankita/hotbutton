class Donation < ActiveRecord::Base
end


# What does paypal need?

# == Schema Information
#
# Table name: donations
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  amount     :integer
#  recipient  :string(255)
#
