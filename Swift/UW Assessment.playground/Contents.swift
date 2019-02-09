import Foundation

// Please write a program, in any language, that counts down from 100 to 0 in steps of 2, and prints the numbers to the console or screen.
for i in stride(from: 0, through: 100, by: 2).reversed() {
    print(i)
}

/// Write a program, in any language (incl pseudocode) that iterates the numbers from 1 to 100.
///     For any value divisible by 4, the program should print "Go".
///     For any value divisible by 5, the program should print "Figure".
///     For any value divisible by 4 and 5, the program should print "GoFigure".
for n in 1 ... 100 {
    if n % 4 == 0 && n % 5 == 0 {
        print("GoFigure")
    } else if n % 4 == 0 {
        print("Go")
    } else if n % 5 == 0 {
        print("Figure")
    }
}

