import Foundation

func solution(_ s:String) -> Bool {
    var left = 0

    for i in Array(s) {
        if i == "(" {
            left += 1
            continue
        }
        if left <= 0 { return false }
        left -= 1
    }

    return left == 0 ? true : false
}

let s1 = "()()"
// true

let s2 = "(())()"
// true

let s3 = ")()("
// false

let s4 = "(()("
// false

print(solution(s1))
