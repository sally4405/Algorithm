import Foundation

func solution(_ s: String) -> Int {
    if s.count == 1 { return 1 }
    return (1...s.count/2).reduce(s.count) { min($0, cut(s, $1)) }
}

func cut(_ s: String, _ n: Int) -> Int {
    var start = s.startIndex
    var end = s.index(start, offsetBy: n)
    var arr: [(String, Int)] = [(String(s[start..<end]), 1)]

    end = s.index(start, offsetBy: n, limitedBy: s.endIndex) ?? s.endIndex
    while end < s.endIndex {
        start = end
        end = s.index(start, offsetBy: n, limitedBy: s.endIndex) ?? s.endIndex

        let target = String(s[start..<end])
        if arr.last!.0 == target {
            arr[arr.count - 1].1 += 1
        } else {
            arr.append((target, 1))
        }
    }

    return arr.reduce(0) { (acc: Int, cur: (String, Int)) -> Int in
        if cur.1 == 1 { return acc + cur.0.count }
        return acc + cur.0.count + String(cur.1).count
    }
}

let s1 = "aabbaccc"
// 7

let s2 = "ababcdcdababcdcd"
// 9

let s3 = "abcabcdede"
// 8

let s4 = "abcabcabcabcdededededede"
// 14

let s5 = "xababcdcdababcdcd"
// 17

//print(solution(s1), solution(s2), solution(s3), solution(s4), solution(s5))
print(solution(s1))
