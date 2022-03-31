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

    private func sumSet() {
        _ = self.sum(Set([1, 2, 3]))
    }

    private func sumFloat() {
        _ = self.sum(ContiguousArray([0.4, 0.3, 0.2]))
    }

    public func sumStrings() -> String {
        let result = self.sum(["h", "e", "l", "l", "o"])
        return result
    }

    private func sum<Seq>(_ numbers: Seq) -> Seq.Element
        where Seq: Sequence, Seq.Element: AdditiveArithmetic  {

            let result = numbers.reduce(Seq.Element.zero) { $0 + $1 }
                return result
    }
}

extension String: AdditiveArithmetic {
    static public var zero: String {
        return ""
    }

    public static func - (lhs: String, rhs: String) -> String {
        return lhs
    }
}
