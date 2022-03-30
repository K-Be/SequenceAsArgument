//
//  Utils.swift
//  Sequences
//
//  Created by Andrew Romanov on 30.03.2022.
//

import Foundation

struct Utils {
    static func getArray(count: Int = 1000) -> [Int] {
        let numbers = Array(0..<count)
        return numbers
    }

    static func addressToString(_ o: UnsafeRawPointer ) -> String {
        String(format: "%p", Int(bitPattern: o))
    }
}
