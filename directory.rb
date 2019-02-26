
def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # get and add the student's cohort
    puts "Which cohort are they in?"
    cohort = gets.chomp.downcase
    # matches the user input against the months, if they make a typo, they're asked again
    unless ["january", "february", "march", "april", "may", "june", "july",
    "august", "september", "october", "november" "december"].include? cohort
      puts "Please enter a valid month"
      cohort = gets.chomp.downcase
    end
    cohort.to_sym
    students << {name: name, cohort: cohort.capitalize}
    # ensures plurals are used if needed
    if students.length > 1
      puts "Now we have #{students.count} students"
    else
      puts "Now we have #{students.count} student"
    end
    # get another name from the user
    name = gets.chomp.capitalize
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(60)
  puts "-------------".center(60)
end

def print(students)
  if students.empty?
    puts "We currently have no students".center(60)
  else
    students.each_with_index do |student, index|
      puts "#{students[index][:name]} (#{students[index][:cohort]})".center(60)
    end
  end
end

def print_footer(students)
  # ensures plurals are used if needed
  if students.length > 0
    puts "Overall, we have #{students.count} great students".center(60)
  end
end
interactive_menu
