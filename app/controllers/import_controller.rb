class ImportController < ApplicationController
   
    class Search 
      attr_accessor :term, :limit, :lat, :long, :radius
      attr_accessor :location, :cc
      attr_accessor :category
    end
    
    def index
    end
    
    def search
      require 'rubygems'
      require 'json'
      require 'open-uri'
      
      search = params[:search]
       
      url = 'http://api.yelp.com/business_review_search?term='+search[:term]+
          '&location='+search[:location]+
          '&lat='+search[:lat]+
          '&long='+search[:long]+
          '&category='+search[:category]+
          '&radius='+search[:radius]+
          '&limit='+search[:limit]+
          '&ywsid='+'bo0mbtvGADJtmnZsEvPjOA'
      
      json  = open(url) {|f| f.read }
      
      parsed = JSON.parse(json)
  
      @restaurants = Array.new
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
       @restaurants.append(rest)
      end
      
    end
end
