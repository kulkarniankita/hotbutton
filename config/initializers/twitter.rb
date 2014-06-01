require 'twitter'


client = Twitter::REST::Client.new do |config|
    config.consumer_key = "kia2Amb3nAzR5zmBBlD1N9WiU"
    config.consumer_secret = "5pzL2X9ZY3jvjenllCyxmVvhOmZEaPGm1YmruC6Hb1E2PNmUGu"
    config.access_token = "507582370-yjgWLEED2Hss8ocGIg6dxqR2nBz71nADJx46bo8E"
    config.access_token_secret = "LarUvoc2cZKNiLlxCOQzDyXcgEqOjMX4s8ClXcLIEYgNa"
end