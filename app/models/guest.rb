require 'pry'

class Guest
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#This is a helper method so that I don't have to loop through
#the trip claas every time I need a guest instance
  def listings
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

#returns an array of all listings a guest has stayed at
  def listing
    listings.map do |one_listing|
      one_listing.listing
    end
  end

#returns an array of all trips a guest has made
  def trips
      listings.select do |one_listing|
        one_listing.guest == self
      end
  end

#returns the number of trips a guest has taken
  def trip_count
    listings.count
  end

#returns an array of all guests who have made over 1 trip
  def self.pro_traveller
   arr = Trip.all.map {|trip| trip.guest}
    arr.select {|name| arr.count(name) > 1}.uniq
  end

#takes an argument of a name (as a string), returns the all
#guests with that name
  def self.find_all_by_name(name)
    arr = Trip.all.select {|trip| trip.guest.name == name}
      arr.map {|trip| trip.guest}
  end

end
