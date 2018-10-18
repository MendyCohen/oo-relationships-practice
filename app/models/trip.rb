require 'pry'

class Trip
  #returns the listing object for the trip
  #returns the guest object for the trip
  attr_accessor :listing, :guest

  @@all = []

  def initialize(listing, guest)
    @listing = listing
    @guest = guest
    @@all << self
  end

  def self.all
    @@all
  end

end
