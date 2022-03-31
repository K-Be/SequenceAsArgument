//
//  main.swift
//  Sequences
//
//  Created by Andrew Romanov on 29.03.2022.
//

import Foundation
import GameKit


let numbers = Utils.getArray()

let handler = GroupHandler(numbers)
//var sum = handler.group()
//print(sum[0])

let sumStr = handler.sumStrings()
print("SumString: \(sumStr)")

