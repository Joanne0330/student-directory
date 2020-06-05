# What happens if the user doesn't enter any students?
# It will try to print an empty list. How can you use an
# if statement (Control Flow) to only print the list if
# there is at least one student in there?
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student has to the array
    students << {name: name, cohort: :november, hobby: :war, age: :unknown}
    if students.count < 2
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    name = gets.chomp
  end
  # return the array of students
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
  if students.count >= 1
    students.each do | student |
      puts "#{student[:name]} (#{student[:cohort]} cohort)
       (#{student[:hobby]}) (#{student[:age]})"
    end
  end
end
def print_footer(names)
  if names.count == 1
    puts "Overall, we have #{names.count} great student"
  elsif names.count >= 2
    puts "Overall, we have #{names.count} great students"
  end
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)