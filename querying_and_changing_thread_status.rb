t1 = Thread.new { sleep 100 }

t2 = Thread.new do
  if Thread.current == Thread.main
    puts "This is the main thread."
  end
  1.upto(1000) { sleep 0.1 }

  count = Thread.list.size