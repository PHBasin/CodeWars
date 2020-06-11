# count_occurences([2, -1, 1, 1, -1]) => {1: 2, 2: 1, -1: 2}

def count_occurrences(array)
  hash = {}
  array.uniq.each do |number|
    hash[number] = array.count(number)
  end
  puts hash
end

def count_occurences_long(array)
  hash = {}
  array.each do |number|
    if hash[number]
      hash[number] += 1
    else
      hash[number] = 1
    end
  end
  puts hash
end

def count_occurences_simple(array)
  hash = Hash.new(0)
  array.each { |number| hash[number] += 1 }
  puts hash
end
