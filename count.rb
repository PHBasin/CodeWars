# count_occurences([2, -1, 1, 1, -1]) => {1: 2, 2: 1, -1: 2}

# 1
def count_occurrences(array)
  hash = {}
  array.uniq.each do |number|
    hash[number] = array.count(number)
  end
  puts hash
end

# 2
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

# 3
def count_occurences_simple(array)
  hash = Hash.new(0)
  array.each { |number| hash[number] += 1 }
  puts hash
end

# two_sum

def two_sum(array, target)
  hash = {}
  array.each_with_index { |number, index| hash[number] = index }

  array.each_with_index do |number, index|
    #  two_sums([5], 10) => [0, 0]
    if hash[target - number] && index != hash[target - number]
      return [index, hash[target - number]]
    end
  end
end
