class School
  attr_accessor :school_name, :roster, :student, :age
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [] << student
    end
  end
  
  def grade(number)
    @roster[number]
  end
  
  def sort
    @roster.map do |key, roster|
      roster.sort!
    end
    @roster.sort.to_h
  end
end

