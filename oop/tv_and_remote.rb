# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.

# The Tv class will have the attributes: power, volume, and channel.
class Tv
  attr_accessor :volume, :channel, :power

  def initialize
    @power = false
    @channel = 1
    @volume = 0
  end
end


class Remote

  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    @tv.power = !@tv.power
  end

  def increment_volume
    if @tv.power
      @tv.volume += 1
    else
      puts 'Sorry the television is off'
    end
  end

  def decrement_volume
    if @tv.power
      @tv.volume -= 1
    else
      puts 'Sorry the television is off'
    end
  end

  def set_channel(number)
    if @tv.power
      @tv.channel = number
    else
      puts 'Sorry the television is off'
    end
  end
end

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods:
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)


puts "Creating instance of TV and remote"
samsung_tv = Tv.new
samsung_remote = Remote.new(samsung_tv)

puts
puts "Testing methods when tv is off"
puts "The following methods should go straight to the else part of the conditional"
samsung_remote.increment_volume
samsung_remote.increment_volume
samsung_remote.decrement_volume
samsung_remote.set_channel(5)

if samsung_tv.volume == 1 || samsung_tv.channel == 5
  puts "Fail!"
else
  puts "Pass!"
end

puts
puts "Turning the tv on:"
samsung_remote.toggle_power

puts "raising volume by 7 then decreasing it by 3"
7.times do
samsung_remote.increment_volume
end
3.times do
samsung_remote.decrement_volume
end
#The volume at this point should be 4 because the default volume is 0
puts samsung_tv.volume
if samsung_tv.volume == 4
  puts "Pass!"
else
  puts "Fail!"
end

puts
puts "Setting Channel to 310"
samsung_remote.set_channel(310)
puts samsung_tv.channel

if samsung_tv.channel == 310
  puts "Pass!"
else
  puts "Fail!"
end
