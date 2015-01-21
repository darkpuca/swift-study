//
//  main.swift
//  swift-study
//
//  Created by darkpuca on 2015. 1. 20..
//  Copyright (c) 2015년 darkpuca. All rights reserved.
//

import Foundation

/* tour */
func sumOf(numbers: Int...) -> Int
{
    var sum = 0;
    for number in numbers
    {
        sum += number
    }

    return sum
}

println("Hello, World!")

// range study
println("sum value is \(sumOf(1, 2, 3, 4, 5))")

let count = 20
for num in 0..<count
{
    println(num)
}

// tuple study
func calc(a: Int, b: Int) -> (sum: Int, multiple: Int)
{
    return (a + b, a * b)
}

let ret = calc (12, 23)
println("sum val: \(ret.sum), multiple val: \(ret.multiple)")

// class study 1
class Shape
{
    var numberOfSides: Int = 0;
    
    func simpleDescription() -> String
    {
        return "a shape with \(numberOfSides) sides."
    }
}

class NamedShape: Shape
{
    var name: String
    
    init(name: String)
    {
        self.name = name
    }
    
    func SimpleName() -> String
    {
        return "my name is \(self.name)"
    }
    
    override func simpleDescription() -> String
    {
        return "\(self.SimpleName()) and a shape with \(numberOfSides) sides."
    }
    
}

var shape1 = NamedShape(name: "squre")
shape1.numberOfSides = 7
println(shape1.simpleDescription());

// class study 2
class Counter
{
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int)
    {
        count += amount * times
    }
}

var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)
println(counter.count)

// enum study
enum Rank: Int
{
    case Ace = 1
    case Two, Three, Four, Five, Six
    case Jack, Queen, King
    
    func simpleDescription() -> String
    {
        switch self
        {
        case .Ace:
            return "ACE"
        case .Jack:
            return "JACK"
        case .Queen:
            return "QUEEN"
        case .King:
            return "KING"
        default:
            return String(self.rawValue)
        }
    }
}

enum ServerResponse
{
    case Result(String, String)
    case Error(String)
}

let success = ServerResponse.Result("6.00 am", "8.09 pm")
let failure = ServerResponse.Error("Out of cheese")

// protocol study
protocol ExampleProtocol
{
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol
{
    var simpleDescription: String = "a very simple class."
    var anotherProperty: Int = 1234
    func adjust()
    {
        simpleDescription += " Now 100 adjusted"
    }
}

var a = SimpleClass()
a.adjust()
let desc = a.simpleDescription
println(desc)


// generic study
func repeat<Item> (item: Item, times: Int) -> [Item]
{
    var result = [Item]()
    for i in 0..<times
    {
        result.append(item)
    }
    return result
}

/* the basics */
// optional
let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()
println("converted number is \(convertedNumber!)")

let possibleNumber2 = "abcd"
if let convertedNumber2 = possibleNumber2.toInt()
{
    println("converted number is \(convertedNumber2)")
}
else
{
    println("nil value")
}

// assert
let age = 8
assert(age > 1)

var age_remainder = 42 % 8
println("remainder value: \(age_remainder)")

// overations
let default_int = 5
var user_int: Int?
var custom_int = user_int ?? default_int

println("custom_int: \(custom_int)")

for num in 1...5
{
    println("range num: \(num)")
}

for num in 1..<5
{
    println("range num: \(num)")
}

// Strings
var kor_string = "가나다라마바사"
for char_val in kor_string.utf16
{
    println(char_val)
}

var count_kor = countElements(kor_string)
println("countElements val: \(count_kor)")

// functions
var names = ["aslkjf", "flkjsdf", "dlzlkdjf", "aelkdfjlks", "bzlkjf"]
func backwords(s1: String, s2: String) -> Bool
{
    return s1 > s2
}
var reversed = sorted(names, backwords)
for name in reversed
{
    print("\(name) ")
}
