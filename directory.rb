# let's put all the students into an array
students = [
"Hannibal Lecter",
 "Darth Vader",
 "Lord Humungus",
 "Micheal Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"Joker",
"Cersey Lannister",
"Sauron",
]

def print_header
  puts "The students of Villains Academy:"
  puts "-----------------"
end

def print(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  puts "-----------------"
  puts "Overall, we have #{names.count} great students!"
end

print_header
print(students)
print_footer(students)