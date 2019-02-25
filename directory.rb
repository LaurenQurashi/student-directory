
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp.capitalize
  # while the name is not empty, repeat this code
  while !name.empty? do
    # get and add the student's hobbies, birthplace, and height to the hash.
    puts "Which hobby?"
    hobby = gets.chomp.capitalize
    puts "Where were they born?"
    birthplace = gets.chomp.capitalize
    puts "Which cohort are they in?"
    cohort = gets.chomp.downcase
    # matches the user input against the months, if they make a typo, they're asked again
    unless ["january", "february", "march", "april", "may", "june", "july",
        "august", "september", "october", "november", "december"].include? cohort
        puts "Please enter a valid month"
        cohort = gets.chomp.downcase
    end
    cohort.to_sym
    students << {name: name, hobby: hobby, birthplace: birthplace,
      cohort: cohort.capitalize}
    puts "Now we have #{students.count} students"
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
  count = 0
  until count == students.count
    students.each_with_index do |student, index|
      puts "#{students[count][:name]} (#{students[count][:cohort]})".center(60)
      puts "Born in: #{students[count][:birthplace]}, Hobby: #{students[count][:hobby]}".center(60)
      count += 1
    end
  end
end
# These are practice methods for step 8 of the challenge
def print_beginning_with(students)
  students.each_with_index do |student, index|
    if students{:name}.start_with?("L")
    puts " #{index + 1}. #{students[:name]} (#{students[:cohort]} cohort)"
    end
  end
end

def print_lessthan12(students)
  students.each_with_index do |student, index|
    if students{:name}.length < 12
    puts " #{index + 1}. #{students[:name]} (#{students[:cohort]} cohort)"
    end
  end
end
# end of practice methods
def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(60)
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
