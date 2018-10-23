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
    puts "What's the age?"
    age = gets.chomp
    puts "What's the Country?"
    country = gets.chomp
    students << {name: name, age: age, country: country, cohort: :october}
    if students.count == 1
      puts "Now we have 1 student"
    else
      puts "Now we have #{students.count} students"
    end
    name = gets.chomp
  end
  students
end

def print(students) 
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]}, #{student[:age]}, #{student[:country]} (#{student[:cohort]} cohort)"
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
