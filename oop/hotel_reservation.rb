# In this exercise, we've already implemented the class, and you have to write the
# driver code.
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

puts 'Testing hotel reservation:'
puts

new_reservation = HotelReservation.new(
  customer_name: 'Riley',
  date: 'October 4th, 2016',
  room_number: '301'
)

puts 'Testing the getters:'
puts "Hello #{new_reservation.customer_name} you
have been assigned to room #{new_reservation.room_number}
on #{new_reservation.date}"

if new_reservation.customer_name == 'Riley' &&
new_reservation.room_number == '301' &&
new_reservation.date == 'October 4th, 2016'
  puts 'Passed!'
else
  puts 'Failed'
end

puts
puts 'Changing room number:'
new_reservation.room_number = '114'
puts "Hello #{new_reservation.customer_name} you
have been re-assigned to room #{new_reservation.room_number}
on #{new_reservation.date}"
if new_reservation.room_number == '114'
  puts 'Passed!'
else
  puts 'Failed!'
end

puts
puts 'Testing the amenities(adding 2 fridges, 1 crib and 1 couch):'
new_reservation.add_a_fridge
new_reservation.add_a_fridge
new_reservation.add_a_crib
new_reservation.add_a_custom_amenity('couch')
p new_reservation.amenities
if new_reservation.amenities == ['fridge','fridge','crib','couch']
  puts 'Passed!'
else
  puts 'Failed!'
end
