//: Playground - noun: a place where people can play

import UIKit

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 < s2
}
var reversedNames = names.sorted(by: backward)
print(reversedNames)
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print(reversedNames)
reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2})
print(reversedNames)
reversedNames = names.sorted(by: {s1, s2 in return s1 < s2})
print(reversedNames)
reversedNames = names.sorted(by: {s1, s2 in s1 > s2})
print(reversedNames)
reversedNames = names.sorted(by: {$0 > $1})
print(reversedNames)
reversedNames = names.sorted(by: <)
print(reversedNames)
reversedNames = names.sorted { $0 > $1 }
print(reversedNames)

let digitNames = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5:"Five", 6:"Six", 7: "Seven", 8: "Eight", 9: "Nine"]
let numbers = [16, 58, 510]
let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
