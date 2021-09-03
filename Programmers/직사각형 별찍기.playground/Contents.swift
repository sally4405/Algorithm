//직사각형 별찍기
//https://programmers.co.kr/learn/courses/30/lessons/12969?language=swift

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

print(String(repeating: String(repeating: "*", count: a) + "\n", count: b))

