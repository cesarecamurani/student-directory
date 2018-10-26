def print_header
  puts "The students of Villains Academy:"
  puts "------------"
end
def input_students
  puts "Please enter the names of the students: "
  puts "To finish, just hit return twice"
  
  students = []
  
  name = gets.chomp
  
  while !name.empty? do 
    students << {name: name, cohort: :october}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end
 
def print(students)
  students.each do |student|
    puts "#{student[:name]}".ljust(15) + "(#{student[:cohort]} cohort)".center(15)
  end
end

def print_footer(students)
  puts "------------"
  puts "Overall, we have #{students.count} great students!"
end
 
students = input_students
print_header
print(students)
print_footer(students)
