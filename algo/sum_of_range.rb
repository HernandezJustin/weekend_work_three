# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.

def sum_of_range(array)
  n = 1
  count = 0
  if array.first > array.last
    array.rotate!
  end

  until array.length == array.last
    new_ary = array.insert(array.first, array.last - n)
    n += 1
  end

  new_ary.each do |number|
    count += number
  end
  return count
end

# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end
