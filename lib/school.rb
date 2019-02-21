class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if !@roster.has_key?(student_grade)
      @roster[student_grade] = []
    end
    @roster[student_grade] << student_name
  end

  def grade(number_input)
    if @roster.has_key?(number_input)
      @roster[number_input]
    end
  end

  def sort
    @roster.each_value do |students_array|
      students_array.sort!
    end
    @roster
  end

end
