# code here!

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name,grade)
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end


  def grade(level)
    @roster[level]
  end

  def sort
    @roster.each_value do |array|
      array.sort!
    end
  end
end
