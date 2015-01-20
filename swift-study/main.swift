//
//  main.swift
//  swift-study
//
//  Created by darkpuca on 2015. 1. 20..
//  Copyright (c) 2015년 darkpuca. All rights reserved.
//

import Foundation


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

println("sum value is \(sumOf(1, 2, 3, 4, 5))")

