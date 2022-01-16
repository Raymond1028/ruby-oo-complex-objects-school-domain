class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end   # code here

  def add_student(name, grade)
    if roster.key?(grade)
      roster[grade] << name
    else
      roster[grade] = [name]
    end
  end

  def grade(student_grade)
    roster[student_grade]
  end

#   def sort
#     roster.sort_by{|grade, name|  name}.to_h.sort.to_h#map #{ |grade, name| "#{grade} name.sort"}
#     #roster.sort|grade,name| name.length <=> b.length 
#   end
def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
