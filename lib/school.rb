require 'pry'
class School
  attr_reader :roster, :school_name

  def initialize(school_name)
    roster = {}
    @roster = roster
    @school_name = school_name
  end


  def add_student(name, grade)
    if roster.has_key?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
  end
end

def grade(grade)
  return roster[grade]
end

def sort
  new_hash = {}
  roster.collect do |grade, name|
    new_hash[grade] = name.sort
  end

return new_hash
end

end
