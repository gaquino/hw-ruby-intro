# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?

  return arr.inject { |n, y|  n + y}

end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.size == 1

  #return arr.each { |n,y| n<=>y }.first(2).inject { |n, y|  n + y}

  sorted = arr.sort
  return sorted[-1] + sorted[-2]

end

def sum_to_n? arr, n

  return false if arr.empty?
  return false if arr.size == 1

  result = false
  arr.each_slice(2).each { |x|
    result = x.inject { |v, y|  v + y} == n
    break if result
  }
  result

end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.nil? | s.empty?
  #return false if !!(s =~ /(?:\d*)?\d+/)
  #return false if !!(s =~/[a-zA-Z]+/)
  return false if !!(s =~/[\[\]\^\$\.\|\?\*\+\(\)\\~`\!@#%&\-_+={}'""<>:;, ]{1,}/)
  return false if !(!!(s =~/[a-zA-Z]+/))
  return !(!!(s.downcase =~ /\A[aeiou]/))
  


end

def binary_multiple_of_4? s
  return false if s.nil? | s.empty?
  
  if (!!(s =~/[a-zA-Z]/))
    if (!!(s =~ /(?:\d*)?\d+/))
        return false
    end
  end
    
    
    
  s.to_i(2)%4==0 ? true : false
  
  
  #s =~ /^[01]*1[01]*00$/
end

# Part 3
class BookInStock
   
  
  
  attr_accessor :isbn,:price
  
    # Criar o objecto
  def initialize(isbn,price)
    @isbn = isbn
    @price = price
    raise ArgumentError.new("ISBN need to be specified") if isbn.empty?
    raise ArgumentError.new("price can't be 0") if price < 1
  end
  
   
  def price_as_string
    return "$%0.2f" % @price
  end
   
end