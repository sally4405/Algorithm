//https://programmers.co.kr/learn/courses/30/lessons/12928?language=swift
//약수의 합

import Foundation

func solution(_ n:Int) -> Int {
    if n == 0 { return 0 }
    var sum: Set<Int> = []
    (1...Int(sqrt(Double(n)))).forEach {
        if n % $0 == 0 {
            sum.insert($0)
            sum.insert(n / $0)
        }
    }
    return sum.reduce(0, +)
}

//let n: Int = 12
////28

//let n: Int = 5
////6

let n: Int = 0
//0

print(solution(n))
