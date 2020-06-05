# In the input_students method the cohort value is
# hard-coded. How can you ask for both the name and the
# cohort? What if one of the values is empty? Can you
# supply a default value? The input will be given to you
# as a string? How will you convert it to a symbol? What
# if the user makes a typo?
def input_students
  puts "Please enter the names of the student, follow by cohort"
  puts "To finish, just type quit and then hit enter twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  cohort = gets.chomp
  # while !name.empty? do
  while name != "quit" do
    if cohort.empty? && name.empty?
      cohort = "N/A"
      name = "unknown"
    elsif cohort.empty?
      cohort = "N/A"
    elsif name.empty?
      name = "unknown"
    end
    puts "check your info, type yes if they're correct, type no to redo"
    puts "name: #{name}, cohort: #{cohort}"
    check = gets.chomp
      if check == "yes"
        students << {name: name, cohort: cohort.to_sym, hobby: :war, age: :immortal}
        puts "Now we have #{students.count} students"
      end
    puts "Please enter the names of the student, follow by cohort"
    puts "To finish, just type quit and then hit enter twice"
    name = gets.chomp
    cohort = gets.chomp
  end
  students
end
# let's put all students into an array
students = [
{name: "Dr. Hannibal Lecter", cohort: :november},
{name: "Darth Vader", cohort: :november},
{name: "Nurse Ratched", cohort: :november},
{name: "Michael Corleone", cohort: :november},
{name: "Alex DeLarge", cohort: :november},
{name: "The Wicked Witch of the West", cohort: :november},
{name: "Terminator", cohort: :november},
{name: "Freddy Krueger", cohort: :november},
{name: "The Joker", cohort: :november},
{name: "Joffrey Baratheon", cohort: :november},
{name: "Norman Bates", cohort: :november}
]
def print_header
  puts "The students of my cohort at Makers"
  puts "-------------".center(30)
end
def print(students)
  students.each do | student |
    puts "#{student[:name]} (cohort: #{student[:cohort]})
     (hobby: #{student[:hobby]}) (age: #{student[:age]})"
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
