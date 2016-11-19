# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
	@mutation = mutation.split("")
	@base_word = base_word.split("")
	remainder = @mutation - @base_word
	if remainder.length == 0
		true
	else
		false
	end

end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")
puts "-----------------"
puts "Your method returned:"
puts result
puts
puts "-------------"
if result == true
  puts "PASS!"
else
  puts "F"
end
puts "-------------------"
result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end

