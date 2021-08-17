//https://programmers.co.kr/learn/courses/30/lessons/12950?language=swift
//행렬의 덧셈

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return arr1.enumerated().map { (i, arr) in arr.enumerated().map { arr2[i][$0] + $1 } }
}


        
let arr1: [[Int]] = [[1,2],[2,3]]
let arr2: [[Int]] = [[3,4],[5,6]]
//[[4,6],[7,9]]

//let arr1: [[Int]] = [1],[2]]
//let arr2: [[Int]] = [[3],[4]]
////[[4],[6]]

print(solution(arr1, arr2))
