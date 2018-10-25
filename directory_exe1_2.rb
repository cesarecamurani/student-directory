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
  students.each.with_index(1) do |student, index|
    if "#{student[:name]}".start_with? "C"
      puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end