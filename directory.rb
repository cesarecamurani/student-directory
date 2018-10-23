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

# and the print them
puts "The students of Villains Academy:"
puts "-----------------"
students.each do |student|
  puts student
end

# finally we print the total 
puts "Overall, we have #{students.count} great students!"

