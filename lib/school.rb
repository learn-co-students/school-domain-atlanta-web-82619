class School
  def initialize(name)
    @roster = {}
    @name = name
  end
  
  def roster
    @roster
  end
  
  def add_student(student, grade)
    @student = student
    @grade = grade
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end
  
  def grade(grade)
    return @roster[grade]
  end
  
  def sort
    @roster.each do |k, v|
      v.sort!
    end
  end
end