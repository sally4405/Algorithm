import Foundation

struct Road: Equatable, Hashable {
    let isRow: Bool     // 가로, 세로
    let num: Int        // 이동한 줄의 숫자
    let smallNum: Int   // 이동한 경로 중 작은 숫자
    let bigNum: Int     // 이동한 경로 중 큰 숫자
}

func solution(_ dirs:String) -> Int {
    var roads: Set<Road> = []
    var point = (x: 0, y: 0)

    for dir in dirs {
        switch dir {
        case "U":
            if point.y < 5 {
                roads.insert(Road(isRow: false, num: point.x, smallNum: point.y, bigNum: point.y + 1))
                point.y += 1
            }
        case "D":
            if point.y > -5 {
                roads.insert(Road(isRow: false, num: point.x, smallNum: point.y - 1, bigNum: point.y))
                point.y -= 1
            }

        case "R":
            if point.x < 5 {
                roads.insert(Road(isRow: true, num: point.y, smallNum: point.x, bigNum: point.x + 1))
                point.x += 1
            }

        case "L":
            if point.x > -5 {
                roads.insert(Road(isRow: true, num: point.y, smallNum: point.x - 1, bigNum: point.x))
                point.x -= 1
            }
        default:
            break
        }
    }

    return roads.count
}

let dirs1 = "ULURRDLLU"
// 7

let dirs2 = "LULLLLLLU"
// 7

print(solution(dirs1))
