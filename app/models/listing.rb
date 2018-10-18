require 'pry'

class Listing
  attr_accessor :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def guests
    trips.map do |trip|
      trip.guest
    end
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    Listing.all.select do |listing|
      listing.city == city
    end
  end

  def self.most_popular
    arr = Trip.all.map do |trip|
      trip.listing
    end
    arr.max_by(1){|listing| arr.count(listing)}
  end

end
