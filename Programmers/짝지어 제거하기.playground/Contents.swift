import Foundation

func solution(_ s:String) -> Int {
    var stack: [Character] = []

    for str in s {
        if let last = stack.last, last == str {
            stack.removeLast()
            continue
        }
        stack.append(str)
    }

    return stack.count == 0 ? 1 : 0
}

let s1 = "baabaa"
// 1

let s2 = "cdcd"
// 0

print(solution(s1))
