//https://programmers.co.kr/learn/courses/30/lessons/86491?language=swift
//최소직사각형

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var w = sizes[0].min()!
    var h = sizes[0].max()!

    sizes.forEach {
        w = w > $0.min()! ? w : $0.min()!
        h = h > $0.max()! ? h : $0.max()!
    }

    return w * h
}


let sizes1 = [[60, 50], [30, 70], [60, 30], [80, 40]]
// 4000

let sizes2 = [[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]
// 120

let sizes3 = [[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]]
// 133

print(solution(sizes1), solution(sizes2), solution(sizes3))
