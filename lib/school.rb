# code here!
require 'pry'
class School
attr_reader :name, :roster


  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(students_name, grade)
    @roster[grade] = [] if !@roster[grade]
    @roster[grade] << students_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |grade, students|
      students.sort!
    end
    @roster
  end

end
