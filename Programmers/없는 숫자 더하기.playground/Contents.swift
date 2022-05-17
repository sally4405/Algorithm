//https://programmers.co.kr/learn/courses/30/lessons/86051?language=swift
//없는 숫자 더하기

import Foundation

func solution(_ numbers:[Int]) -> Int {
    return 45 - numbers.reduce(0, +)
}
