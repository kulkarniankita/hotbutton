class TwitterConfig < ActiveRecord::Base
load 'twitter_config.rb'

result = Twitter.search("to:justinbieber marry me", :count => 1, :result_type => "recent")

result.class
# Twitter::SearchResults

result.statuses[0].user.screen_name
# 4ever_beliebing
end