# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # ผลรวมของ array
  arr.sum
end

def max_2_sum arr
  # นำตัวใหญ่ 2 ตัวมาบวกกัน
  arr.max(2).sum 
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if !arr.any? || arr.length == 1
    return false
  else
    # นำค่าใน array ทีละ2ตัวมาบวกกัน
    arr.combination(2).any? {|x,y| x+y == n}
  end
  

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  isCon = false
  consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y" , "z"]
  if s.length < 1
    return false
  elsif consonant.include? s[0].downcase
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s.delete('01') != '') || s.empty?
    return false
  elsif s.to_i(2) % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    @isbn = isbn
    @price = price.to_f
    raise ArgumentError if isbn.empty? || price < 1

  end

  def isbn
    @isbn  
  end

  def isbn=(new_isbn)
    @isbn = new_isbn

  end

  def price
    @price
  end

  def price=(new_price)
    @price = new_price  
  end

  def price_as_string
    "$#{('%.2f' % @price)}"
  end

end
