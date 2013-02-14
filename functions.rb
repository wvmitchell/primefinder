def prime?(number)
  # No number has a factor larger than it's sqare root, this optimizes the function considerably
  ceiling_root = Math.sqrt(number).ceil 
  
  if number == 2 
    return true # Two is a prime, but will also satisfy 2%2 == 0, this special case must be considered
  end
  
  divisor = 2
  while divisor <= ceiling_root
    if number % divisor == 0
      return false
    end
    divisor += 1
  end
  
  return true
end