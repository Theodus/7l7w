# Write a simple grep that will print the lines of a file having any
# occurrences of a phrase anywhere in that line. You will need to do a simple
# regular expression match and read lines from a file. (This is surprisingly
# simple in Ruby.) If you want, include line numbers.

ARGV.each do |arg|
    File.open(arg, "r") do |f|
        i = 0
        f.each_line do |l|
            print "#{i}\t"
            puts l
            i += 1
        end
    end
end
