# Write a function that accepts an array of 10 integers 
# (between 0 and 9), that returns a string of those 
# numbers in the form of a phone number.

def createPhoneNumber(numbers)
  "(#{numbers.shift(3).join}) #{numbers.first(3).join}-#{numbers.last(4).join}"
end

# Best practices

# def createPhoneNumber(array)
#   '(%d%d%d) %d%d%d-%d%d%d%d' % array
# end
