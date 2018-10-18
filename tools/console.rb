require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


listing1 = Listing.new("bejing")
listing2 = Listing.new("ny")
listing3 = Listing.new("berlin")

guest1 = Guest.new("Andy")
guest2 = Guest.new("David")
guest3 = Guest.new("Bob")

trip1 = Trip.new(listing1, guest1)
trip2 = Trip.new(listing2, guest2)
trip3 = Trip.new(listing3, guest3)
trip4 = Trip.new(listing3, guest1)

Pry.start
