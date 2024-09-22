def benchmark
  # Your benchmarking code goes here.
  start_time = Time.now

  # Yield to the block to execute the code inside it
  yield
  end_time = Time.now 
  duration = end_time - start_time
  duration
end

long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"