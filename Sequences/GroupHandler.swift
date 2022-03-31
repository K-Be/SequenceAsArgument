//
//  GroupHandler.swift
//  Sequences
//
//  Created by Andrew Romanov on 30.03.2022.
//

import Foundation

class GroupHandler {
    let numbers: Array<Int>
    let countRepeats: Int

    init(_ numbers: Array<Int>, countRepeats: Int = 100000) {
        self.numbers = numbers
        self.countRepeats = countRepeats
    }

    func group() -> Array<Int> {
        var sum = Array<Int>(repeating: 0, count: numbers.count)
        for _ in 0..<countRepeats {
            for start in 0..<numbers.count {
                let dropped = numbers.dropFirst(start)
                let numbers = dropped.prefix(3)
                sum[start] = self.sum(numbers)
            }
        }
        return sum
    }

    private func sum<Seq>(_ numbers: Seq) -> Int
            where Seq: Sequence, Seq.Element == Int {

                let result = numbers.reduce(0) { $0 + $1 }
                return result
    }
}
