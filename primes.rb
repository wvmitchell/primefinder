load 'functions.rb'

puts "Which prime number would you like to find?"
prime_num = gets.to_i
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
if prime_num % 10 == 1 && prim_num % 100 != 11
  number_output_modifier = "st"
elsif prime_num % 10 == 2
  number_output_modifier = "nd"
elsif prime_num % 10 == 3
  number_output_modifier = "rd"
end

puts "The #{prime_num}#{number_output_modifier} prime number is #{num}"

  