# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

class TV
attr_accessor :power, :volume, :channel
  def initialize
  @power = false
  @volume = 0
  @channel = 3 
  end

end

class Remote

	def initialize
	end

	def toggle_power(tv)
		if tv.power == true
			tv.power = false
		elsif tv.power == false
			tv.power = true
		end
	end

	def increment_volume(tv)
		tv.volume = tv.volume += 1
	end

	def decrement_volume(tv)
		tv.volume = tv.volume -= 1
		if tv.volume < 0
			tv.volume = 0
		end
	end

	def set_channel(tv, channel)
		tv.channel = channel
	end

end

tv = TV.new
remote = Remote.new

remote.toggle_power(tv)
p tv
remote.toggle_power(tv)
p tv
remote.increment_volume(tv)
p tv
remote.decrement_volume(tv)
p tv
remote.decrement_volume(tv)
p tv
remote.set_channel(tv, 9)
p tv
# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)