class School
  attr_reader :roster, :grade
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  
  def add_student(name, grade)
    if !@roster.has_key?(grade)
      @roster.store(grade, [name])
    else
      @roster[grade] << name
    end
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    @roster.each_value do |values|
      values.sort!
    end
  end
  
end