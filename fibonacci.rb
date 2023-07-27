def fibonacci(num)
  num >= 2 ? fibonacci(num - 1) + fibonacci(num - 2) : num
end

def measure_runtime
  start_time = Time.now
  yield
  end_time = Time.now

  runtime = format('%.6f', end_time - start_time)
  puts "Time taken is: #{runtime} seconds"
end

puts 'Enter a number to calculate its Fibonacci value:'
number = gets.chomp.to_i

measure_runtime do
  result = fibonacci(number)
  puts "The Fibonacci value for #{number} is: #{result}"
end
