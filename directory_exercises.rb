# students = [
# {name: "Dr. Hannibal Lecter", cohort: :november},
# {name: "Darth Vader", cohort: :november},
# {name: "Nurse Ratched", cohort: :november},
# {name: "Michael Corleone", cohort: :november},
# {name: "Alex DeLarge", cohort: :november},
# {name: "The Wicked Witch of the West", cohort: :november},
# {name: "Terminator", cohort: :november},
# {name: "Freddy Krueger", cohort: :november},
# {name: "The Joker", cohort: :november},
# {name: "Joffrey Baratheon", cohort: :november},
# {name: "Norman Bates", cohort: :november}
# ]


# I am not using bash but this code should works for the TL;DR s
# ection: def ask prompt, default = nil; unless default;
# return gets.chomp; end; return default; end; and you can use it
# like: ask 'what is your name' waits for your reply. ask 'what
# is your name', 'darek' this just return default value. Well, if
# that's code that you are looking for I will post it as answer
# and explain more (because comment section has character limits).
# ps. or little hackish way: def ask2 prompt, default = nil;
# default || gets.chomp; end;

# def input_students
#   # default = nil
#   students = []
#   puts "Please enter the names of the students"
#   name = gets.chomp
#   puts "Please enter the month of your cohort"
#   month = gets.chomp
#   puts "To finish, just hit return twice"
#   while !name.empty? do
#     # add the student has to the array
#     students << {name: name, cohort: month}
#     puts "Now we have #{students.count} students"
#     name = gets.chomp
#     month = gets.chomp
#   end
  # combine two arrays into a hash
  # while the name is not empty, repeat this code
  # while !name.empty? do
    # add the student has to the array
  # return the array of students
#   students
# end
# input_students
# def print(students)
#   students.each do | student |
#     puts "#{student[:name]} (#{student[:cohort]} cohort)"
#   end
# end
# input_students
# print
# def input_students
#   puts "Please enter the names of the students"
#   puts "To finish, just hit return twice"
#   # create an empty array
#   students = []
#   # get the first name
#   name = gets.chomp
#   # while the name is not empty, repeat this code
#   while !name.empty? do
#     # add the student has to the array
#     students << {name: name, cohort: :november}
#     puts "Now we have #{students.count} students"
#     name = gets.chomp
#   end
#   # return the array of students
#   students
# end
# # let's put all students into an array
# students = [
# {name: "Dr. Hannibal Lecter", cohort: :november},
# {name: "Darth Vader", cohort: :november},
# {name: "Nurse Ratched", cohort: :november},
# {name: "Michael Corleone", cohort: :november},
# {name: "Alex DeLarge", cohort: :november},
# {name: "The Wicked Witch of the West", cohort: :november},
# {name: "Terminator", cohort: :november},
# {name: "Freddy Krueger", cohort: :november},
# {name: "The Joker", cohort: :november},
# {name: "Joffrey Baratheon", cohort: :november},
# {name: "Norman Bates", cohort: :november}
# ]
# def print_header
#   puts "The students of my cohort at Makers"
#   puts "-------------"
# end
def print(students)
  students.each do | student|
  puts "#{student[:name].center(28)} (#{student[:cohort]} cohort)"
end
# end
# def print_footer(names)
#   puts "Overall, we have #{names.count} great students"
# end
# #nothing happens until we call the methods
# students = input_students
# print_header
# print(students)
# print_footer(students)
