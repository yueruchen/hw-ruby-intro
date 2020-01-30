# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0){|sum,x| sum + x }
  # YOUR CODE HERE
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
     return arr.max(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.length > 2 && arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, #{name}"
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return s == "0" || /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? || isbn.length == 0 || price <= 0
      raise ArgumentError
    end

    @isbn=isbn
    @price=price
  end

  attr_accessor :isbn, :price

  def price_as_string
    "$%0.2f" % [@price]
  end
end