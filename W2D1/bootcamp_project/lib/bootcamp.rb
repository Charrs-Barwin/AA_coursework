class Bootcamp
    def initialize(name,slogan,student_capacity)
        @name,@slogan,@student_capacity = name,slogan,student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new{|h,k|h[k]=[]}
    end
    
    def name()
        @name
    end

    def slogan()
        @slogan
    end

    def teachers()
        @teachers
    end

    def students()
        @students
    end

    def hire(teacher)
        @teachers<<teacher
    end

    def enroll(student)
        return false if students.size >= @student_capacity
        @students<<student
        true
    end

    def enrolled?(student)
        @students.include?(student)
    end


    
    def student_to_teacher_ratio()
        @students.count / @teachers.count
    end
    
    def add_grade(student,grade)
        return false if !students.include?(student)
        @grades[student]<<grade
        true
    end
    
    def num_grades(student)
        @grades[student].count
    end
    
    def average_grade(student)
        return nil if !students.include?(student) || @grades[student].empty?
        @grades[student].sum / @grades[student].count
    end
    
end
