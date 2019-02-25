
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.strip
  # while the name is not empty, repeat this code
  while !name.empty? do
    # get and add the student's hobbies and birthplace to the hash.
    puts "Which hobby?"
    hobby = gets.chomp.capitalize
    puts "Where were they born?"
    birthplace = gets.chomp.capitalize
    puts "Which cohort are they in?"
    cohort = gets.chomp.downcase
    # matches the user input against the months, if they make a typo, they're asked again
    unless ["january", "february", "march", "april", "may", "june", "july",
    "august", "september", "october", "november" "december"].include? cohort
      puts "Please enter a valid month"
      cohort = gets.chomp.downcase
    end
    cohort.to_sym
    students << {name: name, hobby: hobby, birthplace: birthplace,
      cohort: cohort.capitalize}
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

def cohorts(students)
  listed_cohorts = []
  students.each do |student|
    unless listed_cohorts.include? student[:cohort]
      listed_cohorts << student[:cohort]
    end
  end
  listed_cohorts
end

def print_by_cohort(students, listed_cohorts)
  listed_cohorts.each do |month|
    students.each do |student|
      if student[:cohort] == month
        puts "#{student[:name]} (#{student[:cohort]} cohort),born in: #{student[:birthplace]} hobby: #{student[:hobby]}"
      end
    end
  end
end

# end of practice methods

def print_footer(students)
  # ensures plurals are used if needed
  if students.length > 1
    puts "Overall, we have #{students.count} great students".center(60)
  else
    puts "Overall, we have #{students.count} great student".center(60)
  end
end
students = input_students
cohorts = cohorts(students)
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
