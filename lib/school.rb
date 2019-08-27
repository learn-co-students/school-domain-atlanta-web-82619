require "pry"
class School
    attr_accessor :roster
    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student, grade)
         if !@roster[grade]
            @roster[grade] = []
            @roster[grade] << student 

         elsif @roster[grade]
            @roster[grade] << student 
         end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        # grade like [9, ['brit', 'danny']]

        # grade like 9
        # students like ['brit', 'danny', 'nick']
        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
    end
end
