require "rubygems"
require "oauth"
require "json"

consumer_key = 'hJr8F-LRQXhON_NOQEYDiQ'
consumer_secret = 'LjDLiwrIgjN7yep-HR-y2WCg-RQ'
token = 'm_BBFw5eOJcby2j3ffB_JuW-2kuHiNEU'
token_secret = 'tf4zm--vjV_sirJEW3mur262mTs'

api_host = 'api.yelp.com'

consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
access_token = OAuth::AccessToken.new(consumer, token, token_secret)

path = "/v2/search?limit=2&category_filter=chinese&location=Berlin"

json = access_token.get(path).body

parsed = JSON.parse(json)
p parsed

parsed["businesses"].each do |businesses|
  p businesses["name"] +" -- "  +
        businesses["city"] +" -- "  +
        businesses["address1"] +" -- " +
        businesses["zip"] +" -- " +
        businesses["phone"] +" -- "  +
        businesses["url"] +" -- "
end