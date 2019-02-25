
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # get and add the student's hobbies, birthplace, and height to the hash.
    puts "Which hobby?"
    hobby = gets.chomp
    puts "Where were they born?"
    birthplace = gets.chomp
    puts "How tall are they?"
    height = gets.chomp
    students << {name: name, hobby: hobby, birthplace: birthplace, height: height, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end
def print_header
  puts "The students of Villains Academy".centre(60)
  puts "-------------".centre(60)
end
def print(students)
  count = 0
  until count == students.length
    puts " #{index + 1}. #{students[:name]} (#{students[:cohort]})".centre(60)
    puts "Born in: #{students[:birthplace]}, Height: #{students[:height]}, Hobby: #{students[:hobby]}".centre(60)
    count += 1
  end
end
def print_beginning_with(students)
  students.each_with_index do |student, index|
    if students{:name}.start_with?("L")
    puts " #{index + 1}. #{students[:name]} (#{students[:cohort]} cohort)"
  end
end
def print_lessthan12(students)
  students.each_with_index do |student, index|
    if students{:name}.length < 12
    puts " #{index + 1}. #{students[:name]} (#{students[:cohort]} cohort)"
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students".centre(60)
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
