# original file contents
File.foreach("test.txt").with_index do |line, line_num|
  puts "#{line_num}: #{line}"
end

# load the file as a string
data = File.read("test.txt")

# find occurrences
count = data.scan(/\bline\b/).count

# globally substitute "install" for "latest"
modified_data = data.gsub( /\bline\b/, 'sentence' )

# open the file for writing
File.open("test1.txt", "w") do |f|
  f.write(modified_data)
end

puts "\n\ncount: #{count}\n\n"

# modified file contents
File.foreach("test1.txt").with_index do |line, line_num|
  puts "#{line_num}: #{line}"
end