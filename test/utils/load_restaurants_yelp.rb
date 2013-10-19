require "rubygems"
require "json"

#file = open("C:\\xampp\\htdocs\\git\\Rammi\\test\\utils\\restaurants-yelp - chinese.json", mode="r")
file = open("C:\\xampp\\htdocs\\git\\Rammi\\test\\utils\\restaurants-yelp - chinese.json", mode="r")
json = file.read

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