# code here!
class School
    attr_reader :roster

    def initialize (name)
        @name = name
        @roster = {}
    end

    def add_student (name, grade)
        @roster[grade] = [] if @roster[grade] == nil
        @roster[grade].push(name)
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each_value do |value|
            value.sort!
        end
        @roster
    end
end

