require 'rubygems'
require 'json'
require 'open-uri'


location = 'Berlin'
limit = '20'
category = 'french'
ywsid = 'bo0mbtvGADJtmnZsEvPjOA'


url = 'http://api.yelp.com/business_review_search?location='+location+
    '&limit='+limit+
    '&category='+category+
    '&ywsid='+ywsid

json  = open(url) {|f| f.read }

parsed = JSON.parse(json)



parsed["businesses"].each do |businesses|

  name = businesses["name"]
  city = businesses["city"]
  address1 = businesses["address1"]
  zip = businesses["zip"]
  phone = businesses["phone"]
  url = businesses["url"]
  categories = businesses["categories"]
  description = ''
  categories.each do |category|
    description = description + category["name"] + " "
  end
  rest = Restaurant.new
  rest.name=name
  rest.city =  City.find_by! name:city
  rest.street = address1
  rest.zip_code = zip
  rest.phone = phone
  rest.website = url
  rest.description =description
  rest.save
end