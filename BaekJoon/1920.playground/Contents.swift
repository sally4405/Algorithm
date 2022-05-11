//https://www.acmicpc.net/problem/1920
//수 찾기

import Foundation

let _ = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map{Int($0)!}
let _ = Int(readLine()!)!
let nums = readLine()!.components(separatedBy: " ").map{Int($0)!}

var answer = ""

var temp: [Int: Bool] = [:]
arr.forEach { temp[$0] = true }
nums.forEach { answer += temp.keys.contains($0) ? "1\n" : "0\n" }

print(answer)

