class School
  attr_reader :roster, :name, :grade

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
    roster.each do |k, v|
      roster[k] = v.sort
    end
  end

end
