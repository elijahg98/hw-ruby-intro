# Elijah Gonzales-Intharakhumhang
# CSCE 431-500
# 725000232
# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end


def max_2_sum arr
  arr.sort.last(2).sum
end


def sum_to_n? arr, n
  if arr == []
    return false
  else
    (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
  end
end

# Part 2

def hello(name)
  return("Hello, " + name)
end

def starts_with_consonant? s
  return(s =~ /\A(?=[^aeiou])(?=[a-z])/i)
end

def binary_multiple_of_4? s
  if (s.delete('01') != '')
    return false
  elsif (s == '')
    return false
  else
    return(s.to_i(base=10) % 4 == 0)
  end
end

# Part 3

class BookInStock
  
  def initialize(isbn, price)
    if(isbn == '')
      raise ArgumentError.new("Empty string is not allowed for ISBN")
    end
    if(price <= 0)
      raise ArgumentError.new("Price cannot be less than or equal to zero")
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    "$" + ((@price * 100).round.to_s).reverse.insert(2,'.').reverse
  end
  
end
