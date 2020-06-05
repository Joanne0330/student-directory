# Once you complete the previous exercise, change
# the way the users are displayed: print them grouped
# by cohorts. To do this, you'll need to get a list of
# all existing cohorts (the map() method may be useful
# but it's not the only option), iterate over it and only
# print the students from that cohort.
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
    students << {name: name, cohort: :november, hobby: :war, age: "unknown"}
    puts "Now we have #{students.count} students"
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
  puts "--------------------".center(30)
end
def print(students)
  students.each do | student |
    name = student[:name]
    cohort = student[:cohort]
    hobby = student[:hobby]
    age = student[:age]
    if student[cohort] == nil
      student[cohort] = []
    end
    student[cohort] << name << hobby << age
    puts "#{student[cohort]}".center(30)
    # puts "#{student[:name]} (#{student[:cohort]} cohort)"
     # (#{student[:hobby]}) (#{student[:age]})"
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
