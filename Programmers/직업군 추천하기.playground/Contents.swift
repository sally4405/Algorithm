//https://programmers.co.kr/learn/courses/30/lessons/84325?language=swift
//직업군 추천하기

import Foundation

func solution(_ table:[String], _ languages:[String], _ preference:[Int]) -> String {
    var score: [String:Int] = ["SI":0, "CONTENTS":0, "HARDWARE":0, "PORTAL":0, "GAME":0]
    
    for item in table {
        var usingLanguages = item.components(separatedBy: " ")
        let job = usingLanguages.removeFirst()
        for (index, language) in usingLanguages.enumerated() {
            if languages.contains(language) {
                score[job]! += (5-index) * preference[languages.firstIndex(of: language)!]
            }
        }
    }
    
    let sortedScore = score.sorted {
        if $0.value == $1.value { return $0.key < $1.key }
        return $0.value > $1.value
    }
    
    print(sortedScore)
    return sortedScore[0].key
}

            
//let table: [String] = ["SI JAVA JAVASCRIPT SQL PYTHON C#", "CONTENTS JAVASCRIPT JAVA PYTHON SQL C++", "HARDWARE C C++ PYTHON JAVA JAVASCRIPT", "PORTAL JAVA JAVASCRIPT PYTHON KOTLIN PHP", "GAME C++ C# JAVASCRIPT C JAVA"]
//let languages: [String] = ["PYTHON", "C++", "SQL"]
//let preference: [Int] = [7, 5, 5]
////"HARDWARE"

let table: [String] = ["SI JAVA JAVASCRIPT SQL PYTHON C#", "CONTENTS JAVASCRIPT JAVA PYTHON SQL C++", "HARDWARE C C++ PYTHON JAVA JAVASCRIPT", "PORTAL JAVA JAVASCRIPT PYTHON KOTLIN PHP", "GAME C++ C# JAVASCRIPT C JAVA"]
let languages: [String] = ["JAVA", "JAVASCRIPT"]
let preference: [Int] = [7, 5]
//"PORTAL"

print(solution(table, languages, preference))
