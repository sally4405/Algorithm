import Foundation

func solution(_ word:String) -> Int {
    let CNT = [781, 156, 31, 6, 1]
    let dic = ["A": 0, "E": 1, "I": 2, "O": 3, "U": 4]

    return word.enumerated().reduce(0) { $0 + dic[String($1.element)]! * CNT[$1.offset] + 1}
}

let word1 = "AAAAE"
// 6

let word2 = "AAAE"
// 10

let word3 = "I"
// 1563

let word4 = "EIO"
// 1189

let word6 = "UUUUU"
// 3905

print(solution(word6))
