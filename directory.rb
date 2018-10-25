def print_header
  puts "The students of Villains Academy:"
  puts "------------"
end

def input_students
  puts "Please enter the names of the students: "
  puts "To finish, just hit return twice"
  
  students = []
  months = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
  
  name = gets.chomp.capitalize
  
  while !name.empty? do 
    puts "What's the age?"
    age = gets.chomp
    puts "What's the Country?"
    country = gets.chomp.capitalize
    puts "What's the cohort month?"
    cohort = gets.chomp
    if cohort.empty? 
        students << {name: name, age: age, country: country, cohort: "Makers"}
    elsif months.include? cohort
        students << {name: name, age: age, country: country, cohort: cohort}
    end
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print(students) 
  counter = 0
  while counter < students.count
    students.map.with_index(1) do |student, index|
      puts "#{index}. #{student[:name]}, #{student[:age]}, #{student[:country]} (#{student[:cohort]} cohort)"
      counter += 1
    end
  end
end

def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      break
    else
      puts "I don't know what you mean, try again!"
    end
end
end

def print_footer(students)
  if !students.empty?
    puts "------------"
    puts "Overall, we have #{students.count} great students!"
  else
  end
end

interactive_menu