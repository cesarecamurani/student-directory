
def print_source_code
  my_own_code = __FILE__
  puts File.read(my_own_code)
  puts "OOppss... Can you close the program pls, I'm naked!"
end
 
print_source_code