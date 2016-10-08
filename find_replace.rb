# original file contents
File.foreach("test.txt").with_index do |line, line_num|
  puts "#{line_num}: #{line}"
end

# load the file as a string
data = File.read("test.txt")

# find word
puts("\nEnter word to find:")
find = gets.chomp()

# replace with word
puts("Enter word to replace:")
replace = gets.chomp()

# find occurrences
count = data.scan(/\b#{find}\b/).count

# globally substitute "install" for "latest"
modified_data = data.gsub( /#{find}/, replace )
# applicationId "com.mirraw.android.rangolidesigns"

# open the file for writing
File.open("test1.txt", "w") do |f|
  f.write(modified_data)
end

puts "\n\ncount: #{count}\n\n"

# modified file contents
File.foreach("test1.txt").with_index do |line, line_num|
  puts "#{line_num}: #{line}"
end