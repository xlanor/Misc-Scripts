#! /usr/bin/env ruby
#
#   Gpa calculator
#   Assumption that all have NomCP of 6 and
#   that the gpa is based upon 5.

def getGrades()
    arrayOfGrades = []
    isContinue = true
    until isContinue == false
        print "Enter Grade attained (-1 to calculate and exit): "
        userInput = Float(gets) rescue false
        if not userInput
            puts "Did not receive a valid grade."
        end
        if userInput != -1 and userInput
            puts "Received grade #{userInput}"
            arrayOfGrades.push(userInput)
        elsif userInput and userInput == -1 
            puts "Calculating and exiting..."
            isContinue = false
        end
    end
    return arrayOfGrades
end

def caclulateGrades(arrayOfGrades)
    gradeSum = arrayOfGrades.inject(0){|sum,x| sum + x }
    noMods = arrayOfGrades.length
    return (5*gradeSum)/(noMods*100)
end

if __FILE__ == $0
    gradesList = getGrades()
    gpa = caclulateGrades(gradesList)
    puts "Received GPA of :#{gpa}/5.0"
end
