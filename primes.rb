# Will Mitchell 2013

# This simple command line program prompts the user for an nth prime number to find
# The program makes use of an externally called prime checker, and iterates through all the positive integers until it reaches the nth prime

load 'functions.rb'

puts "Welcome to the prime number finder! Search for as many prime numbers as you like, then enter 0 to exit! Have fun!"
quit = 1

while true
  puts "Which prime number would you like to find?"
  prime_num = gets.to_i
  if prime_num == 0
    break
  end
  prime_count = 0
  num = 2

  while true  
    if prime?(num)
      prime_count += 1
    end

    if prime_count < prime_num
      num += 1
    else
      break
    end
  end

  number_output_modifier = "th"
  if prime_num % 10 == 1 && prime_num % 100 != 11
    number_output_modifier = "st"
  elsif prime_num % 10 == 2
    number_output_modifier = "nd"
  elsif prime_num % 10 == 3
    number_output_modifier = "rd"
  end

  puts "The #{prime_num}#{number_output_modifier} prime number is #{num}\n"
end 

puts "Hope you found your primes! Adios!"

  