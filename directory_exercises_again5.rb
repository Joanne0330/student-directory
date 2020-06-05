# The filename we use to save and load data (menu items 3
# and 4) is hardcoded. Make the script more flexible by asking
# for the filename if the user chooses these menu items.


@students = [] # an empty array accessible to all methods
def user_load_selection
  puts Dir["/Users/joannechen/Projects/student-directory/*.csv"]
  load_students(gets.chomp)
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of save_students
  @students.each do | student |
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
  puts "You have successfully saved the students.csv"
end

def try_load_students
  filename = ARGV.first# first argument from the command line
  filename = "students.csv" if filename.nil?# get out of the method if it isn't given
  if File.exists?(filename) #if it exists
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

def load_students(filename)
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    making_list(name)
  end
  file.close
  puts "You have sucessfully loaded the students.csv"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    making_list(name)
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
end

def making_list(name)
  @students << {name: name, cohort: :november}
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1" then input_students
  when "2" then show_students
  when "3" then save_students
  when "4" then load_students
  when "9" then exit #this will cause the program to terminate
  else
    puts "I don't know what you mean, try again"
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do | student |
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end
# user_load_selection
try_load_students
interactive_menu
# user_load_selection

# let's put all students into an array
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
