//https://programmers.co.kr/learn/courses/30/lessons/87389?language=swift
//나머지가 1이 되는 수 찾기

import Foundation

func solution(_ n:Int) -> Int {
    let maxX = n - 1
    for i in 2...Int(sqrt(Double(maxX))) {
        if maxX % i == 0 {
            return i
        }
    }
    return maxX
}

let n = 10

print(solution(n))
