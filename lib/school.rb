# code here!
class School

    attr_accessor :name, :roster

    def initialize(name)
        @roster = {}
        @name = name
    end

    def add_student(student_name, grade)
        if !roster[grade]
            roster[grade] = []
            roster[grade] << student_name
        else 
            roster[grade] << student_name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, student|
            sorted[grade] = student.sort
        end
        sorted
    end
end