# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name= name
    @roster= {}
  end

  def grade(grade)
    @roster[grade]
  end

  def add_student(name, grade)
    if @roster.key.include?(grade)
      @roster[grade]<<name
    else
      @roster[grade]=[]
      @roster[grade]<<name
    end

    def sort
      @roster.each{|grade, students| students.sort!}
      @roster
    end
end
