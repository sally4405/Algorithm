import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    if words.first!.count == 0 { return [1, 1] }
    var wordCheck: Set<String> = [words.first!]

    for i in 1..<words.count {
        if (words[i].count == 1 || words[i-1].last! != words[i].first! || wordCheck.contains(words[i])) {
            return [i % n + 1, i / n + 1]
        }
        wordCheck.insert(words[i])
    }

    return [0, 0]
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
