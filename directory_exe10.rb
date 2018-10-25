def print_header(students)
  if !students.empty?
    puts "The students of Villains Academy:"
    puts "------------"
  else
  end
end
  
def input_students
  puts "Please enter the names of the students: "
  puts "To finish, just hit return twice"
   
  students = []
    name = gets.gsub("\n", "")
  
  while !name.empty? do 
    puts "What's the age?"
     age = gets.gsub("\n", "")
    puts "What's the Country?"
     country = gets.gsub("\n", "")
    students << {name: name, age: age, country: country, cohort: :october}
    puts "Now we have #{students.count} students"
    name = gets.gsub("\n", "")
  end
  students
end
  
def print(students) 
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]}, #{student[:age]}, #{student[:country]} (#{student[:cohort]} cohort)"
  end
end
 
def print_footer(students)
  if !students.empty?
    puts "------------"
    puts "Overall, we have #{students.count} great students!"
  else
  end
end
  
students = input_students
print_header(students)
print(students)
print_footer(students)