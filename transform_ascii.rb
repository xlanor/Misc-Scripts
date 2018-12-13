#!/usr/bin/env ruby
# Quick and simple script to transform user input
# into ascii equivalent values.
# Not including spaces.

# ASCII character mapping
def mapping(stringToSplit)
    arrSplit = stringToSplit.scan /\w/
    return arrSplit.map { |n| n.ord }
end


if __FILE__ == $0
    print "Enter the string that is to be converted to ascii: "
    userInput = gets.chomp
    splitBySpace = userInput.split(" ")
    responseType = splitBySpace.map {|splitStr| mapping(splitStr)}
    print responseType
end
