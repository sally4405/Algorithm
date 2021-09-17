//복서 정렬하기
//https://programmers.co.kr/learn/courses/30/lessons/85002?language=swift

func solution(_ weights:[Int], _ head2head:[String]) -> [Int] {
    var players: [(num: Int, weight: Int, rate: Double, winBiggerCount: Double)] = []
    
    for i in 0..<weights.count {
        
        var gameCount: Double = 0
        var winCount: Double = 0
        var winBiggerCount: Double = 0
        
        for (j, result) in head2head[i].enumerated() {
            if result == "N" { continue }
            gameCount += 1
            if result == "L" { continue }
            winCount += 1
            if weights[i] < weights[j] { winBiggerCount += 1 }
        }
        
        players.append((num: i+1, weight: weights[i], rate: gameCount == 0 ? 0 : winCount / gameCount, winBiggerCount: winBiggerCount))
    }
    
    players.sort {
        if $0.rate != $1.rate { return $0.rate > $1.rate }
        if $0.winBiggerCount != $1.winBiggerCount { return $0.winBiggerCount > $1.winBiggerCount }
        if $0.weight != $1.weight { return $0.weight > $1.weight }
        return $0.num < $1.num
    }
    
    return players.map { $0.num }
}

//let weights: [Int] = [50,82,75,120]
//let head2head: [String] = ["NLWL","WNLL","LWNW","WWLN"]
////[3,4,1,2]

//let weights: [Int] = [145,92,86]
//let head2head: [String] = ["NLW","WNL","LWN"]
////[2,3,1]

let weights: [Int] = [60,70,60]
let head2head: [String] = ["NNN","NNN","NNN"]
//[2,1,3]

print(solution(weights, head2head))
