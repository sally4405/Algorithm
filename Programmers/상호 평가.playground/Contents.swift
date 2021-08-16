//https://programmers.co.kr/learn/courses/30/lessons/83201?language=swift
//상호 평가

import Foundation

func solution(_ scores:[[Int]]) -> String {
    var answer: String = ""
    var reversedScores = Array(repeating: Array(repeating: 0, count: scores.count), count: scores.count)
    
    for (i, score) in scores.enumerated() {
        for (j, point) in score.enumerated() {
            reversedScores[j][i] = point
        }
    }
    
    for (i, score) in reversedScores.enumerated() {
        var average: Double
        
        if (score[i] == score.max() || score[i] == score.min()) && score.filter({ $0 == score[i] }).count == 1 {
            average = Double(score.filter { $0 != score[i] }.reduce(0,+) / (score.count - 1))
        } else {
            average = Double(score.reduce(0,+) / score.count)
        }

        switch average {
        case (90...):
            answer += "A"
        case (80...90):
            answer += "B"
        case (70...80):
            answer += "C"
        case (50...70):
            answer += "D"
        default:
            answer += "F"
        }
    }
    
    return answer
}

//let scores: [[Int]] = [[100,90,98,88,65],[50,45,99,85,77],[47,88,95,80,67],[61,57,100,80,65],[24,90,94,75,65]]
////"FBABD"

let scores: [[Int]] = [[50,90],[50,87]]
//"DA"

//let scores: [[Int]] = [[70,49,90],[68,50,38],[73,31,100]]
////"CFD"

print(solution(scores))
