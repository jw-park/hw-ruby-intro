# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0){|sum, x| sum + x}
end

def max_2_sum arr
  sum(arr.max(2))
end

def sum_to_n? arr, n

  if arr.length == 0
    return false
  end

  i = 0
  j = arr.length - 1
  sorted = arr.sort
  while i < j
    if sorted[i] + sorted[j] == n
      return true
    elsif sorted[i] + sorted[j] < n
      i += 1
    else
      j -= 1
    end
  end
  false

end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s == '' or s[/[a-zA-Z]+/] != s
    return false
  end

  vowels = %w(a e i o u A E I O U)
  not vowels.include? s[0]
end

def binary_multiple_of_4? s
  length = s.length
  if s[/[0, 1]+/] != s
    false
  elsif s[/[0]+/] == s
    true
  elsif length > 2 and s[length - 2, length - 1] == '00'
    true
  else
    false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError if isbn == '' or price <= 0
    self.isbn = isbn
    self.price = price
  end

  def price_as_string
    "$#{'%.2f' % self.price}"
  end
end
