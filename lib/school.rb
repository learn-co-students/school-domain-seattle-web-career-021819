# code here
require 'pry'

class School
  attr_reader :student, :grade, :roster

  def initialize(school)
    @school = school
    @roster ||= {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |key,value|
      roster[key] = value.sort
  end
end
end


#add a student, add multiple students, ad students to different grades

# => {9 => ["AC Slater", "Zach Morris"], 10 => ["Aardvark", "Kelly Kapowski"], 11 => ["Screech", "Xavier"]}

#grade is key  and name is value-- rost
