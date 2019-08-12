# code here!
class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        array = {}
        @roster.sort
        @roster.each do |grade, names|
            array[grade] = names.sort
        end 
    array
    end
end