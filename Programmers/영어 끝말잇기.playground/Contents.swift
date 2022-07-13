import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var wordSet: Set<String> = []
    var lastChar = words.first?.first

    for word in words {
        if word.count == 1 { break }
        if word.first != lastChar { break }
        if wordSet.contains(word) { break }

        wordSet.insert(word)
        lastChar = word.last
    }

    if words.count == wordSet.count { return [0, 0] }

    let num = (wordSet.count + 1) % n
    let order = ceil(Double(wordSet.count + 1) / Double(n))
    return [num == 0 ? n : num, Int(order)]
}

let n1 = 3
let words1 = ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]
// [3,3]

let n2 = 5
let words2 = ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"]
// [0,0]

let n3 = 2
let words3 = ["hello", "one", "even", "never", "now", "world", "draw"]
//[1,3]

print(solution(n3, words3))
