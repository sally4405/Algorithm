import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var answer: [Int] = []
    var days: [Int] = []
    var cursor = 0

    for i in (0..<progresses.count) {
        days.append((100-progresses[i]-1) / speeds[i] + 1)
    }

    while cursor < days.count {
        var temp = 0
        let requiredDay = days[cursor]
        while cursor < days.count && days[cursor] <= requiredDay {
            temp += 1
            cursor += 1
        }
        answer.append(temp)
    }

    return answer
}

let progresses1 = [93, 30, 55]
let speeds1 = [1, 30, 5]
// [2, 1]

let progresses2 = [95, 90, 99, 99, 80, 99]
let speeds2 = [1, 1, 1, 1, 1, 1]
// [1, 3, 2]

print(solution(progresses2, speeds2))
