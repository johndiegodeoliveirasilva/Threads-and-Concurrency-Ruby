# Creating Threads
y = 1
x = 2
thread = Thread.new(99, 100) do |a, b|
  y = 10
  x = 11
end

puts x, y


# Accessing Thread-Local Variables

thread = Thread.new do
  t = Thread.current
  t[:var1] = "This is a string"
  t[:var2] = 365
end

sleep 1

# Access the thread-local data from outside

x = thread[:var1]
y = thread[:var2]

has_var2 = thread.key?(:var2)
has_var3 = thread.key?(:var3)

count = 0
thread = Thread.new { loop { count +=1 }}
sleep 1

Thread.kill(thread)
puts count