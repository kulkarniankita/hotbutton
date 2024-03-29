class Campaign < ActiveRecord::Base

  has_many :subscriber_updates
  after_initialize :module_list_defaults

  store :config, accessors: [ :enabled_modules, :donation, :donation_purpose, :subscription, :subscription_message ], coder: JSON

  has_one :background
  has_many :links

  has_many :subscribers
  has_many :hashtags
  has_many :subscriber_updates

  accepts_nested_attributes_for :background, :links, :hashtags, :subscribers


  def module? (ui_mod)
    self.config.fetch(:enabled_modules, {}).fetch(ui_mod.to_sym, false) ? true : false
  end

  private

  def module_list_defaults
    self.enabled_modules = {} unless persisted?
  end

end


# == Schema Information
#
# Table name: campaigns
#
#  id              :integer          not null, primary key
#  created_at      :datetime
#  updated_at      :datetime
#  activation_date :datetime
#  expiration_date :datetime
#  config          :text
#
