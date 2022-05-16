//https://programmers.co.kr/learn/courses/30/lessons/92334
//신고 결과 받기

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var idDic: [String:Int] = [:]
    var reportDic: [String:Set<String>] = [:]

    id_list.forEach {
        idDic[$0] = 0
        reportDic[$0] = []
    }

    report.forEach {
        let names = $0.components(separatedBy: " ")
        reportDic[names.last!]?.insert(names.first!)
    }

    for (_, value) in reportDic {
        if value.count >= k {
            value.forEach { idDic[$0]! += 1 }
        }
    }

    var answer: [Int] = []
    id_list.forEach {
        answer.append(idDic[$0]!)
    }

    return answer
}

let id_list = ["muzi", "frodo", "apeach", "neo"]
let report = ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach  muzi"]
let k = 2
//result = [2,1,1,0]

print(solution(id_list, report, k))
