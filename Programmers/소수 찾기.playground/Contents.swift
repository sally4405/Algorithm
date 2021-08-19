//https://programmers.co.kr/learn/courses/30/lessons/12921?language=swift
//소수 찾기

import Foundation

func solution(_ n:Int) -> Int {
    var answer: Int = 0
    for i in 2...n {
        if isPrime(i) { answer += 1 }
    }
    return answer
}

func isPrime(_ n: Int) -> Bool {
    if n == 2 || n == 3 { return true }
    for i in 2...Int(sqrt(Double(n))) {
        if n % i == 0 { return false }
    }
    return true
}

//let n: Int = 10
////4

let n: Int = 5
//3

print(solution(n))
