class School

    attr_reader :school_name, :roster

    def initialize(school_name)
        @school_name=school_name
        @roster={}
    end

    def add_student(name, grade)
        if !(@roster.has_key?(grade))
            @roster[grade]=[]
            @roster[grade].push(name)
        else
            @roster[grade].push(name)
        end
    end

    def grade(grade_num)
        @roster[grade_num]
    end

    def sort
        @roster.map do |k,v|
            [k,v.sort_by{ |word| word.downcase}]
        end.to_h
    end


end