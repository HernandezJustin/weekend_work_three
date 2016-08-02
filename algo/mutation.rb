# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
  not_included = 0
  include_all = false
  base = base_word.split(//).sort
  mutated = mutation.split(//).sort

  mutation.size.times do |char|
    if base.include? mutated[char]
    else
      not_included += 1
    end
  end

  if not_included > 0
    include_all
  else
    !include_all
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end
