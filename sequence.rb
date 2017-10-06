puts "Fibonacci Sequence"

glue = gets.chomp.to_i

# user_input = length of Fibonacci Sequence

def fib (places)

  a = 0
  b = 1
  arr = 1..places
  arr = arr.to_a
  arr.each { |num|
    puts b
    a,b = b,a+b
  }

end

fib (glue)


# print "#{a} "


# end

# puts ""

# puts gets.chomp.split.reverse.join(' ')
