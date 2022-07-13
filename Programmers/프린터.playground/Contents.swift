import Foundation

struct Paper {
    let index: Int
    let priority: Int
}

func findMax(_ arr: [Paper]) -> Int {
    return arr.map { $0.priority }.max() ?? 0
}

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var answer = 0

    var queue = priorities.enumerated().map { index, priority in
        return Paper(index: index, priority: priority)
    }

    while queue.count > 0 {
        let max = findMax(queue)
        let current = queue.removeFirst()

        if current.index == location && current.priority == max {
            answer += 1
            break
        }

        if current.priority == max {
            answer += 1
            continue
        }

        queue.append(current)
    }

    return answer
}

let priorities1 = [2, 1, 3, 2]
let location1 = 2
// 1

let priorities2 = [1, 1, 9, 1, 1, 1]
let location2 = 0
// 5

print(solution(priorities2, location2))
