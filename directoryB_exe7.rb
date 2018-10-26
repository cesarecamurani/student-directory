require "csv"

@students = []

def print_header
  puts "The students of Villains Academy:"
  puts "------------"
end

def input_students
  puts "Please enter the names of the students: "
  puts "To finish, just hit return twice"
  
  months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  
  name = STDIN.gets.chomp.capitalize
  
  while !name.empty? do 
    puts "What's the age?"
    age = STDIN.gets.chomp
    puts "What's the Country?"
    country = STDIN.gets.chomp.capitalize
    puts "What's the cohort month?"
    cohort = STDIN.gets.chomp.capitalize
    if cohort.empty? 
      @students << {name: name, age: age, country: country, cohort: "Makers"}
    elsif months.include? cohort
      @students << {name: name, age: age, country: country, cohort: cohort.to_sym}
    end
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
end

def print_students_list
  counter = 0
  while counter < @students.count
    @students.map.with_index(1) do |student, index|
      puts "#{index}. #{student[:name]}, #{student[:age]}, #{student[:country]} (#{student[:cohort]} cohort)"
      counter += 1
    end
  end
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_footer
  if !@students.empty?
    puts "------------"
    puts "Overall, we have #{@students.count} great students!"
  else
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
    puts "Your list has been saved to students.csv"
    puts "------------"
  when "4"
    load_students
    puts "Your list has been loaded from students.csv"
    puts "Press 2 to see it"
    puts "------------"
  when "9"
    exit
  else
    puts "I don't know what you mean, try again!"
  end
end

def save_students
  CSV.foreach("students.csv", "w+") do |file|
    @students.each do |student|
      student_data = [student[:name], student[:age], student[:country], student[:cohort]]
      csv_line = student_data.join(" , ")
      file.puts csv_line
    end
  end
end

def load_students(filename = "students.csv")
  CSV.foreach("students.csv", "r") do |file|
    file.readlines.each do |line|
      name, age , country, cohort = line.chomp.split(" , ")
      @students << {name: name, age: age, country: country, cohort: cohort.to_sym}  
    end
  end
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} students from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end



try_load_students
interactive_menu
