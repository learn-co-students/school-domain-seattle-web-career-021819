class School
  attr_reader :name, :roster

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student, grade)
      @roster[grade] ||= []
      @roster[grade] << student
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.collect do |grade, name|
      @roster[grade] = name.sort
    end
    @roster
  end


end
