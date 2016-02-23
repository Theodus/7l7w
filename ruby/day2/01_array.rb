# Print the contents of an array of sixteen numbers, four numbers at a time,
# using just each. Now, do the same with each_slice in Enumerable.

a = [*1..16]
a.each do |i|
    print "#{i} "
    puts if i%4 == 0
end

a.each_slice(4) do |s|
    print s
    puts
end
