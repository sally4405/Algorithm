//https://programmers.co.kr/learn/courses/30/lessons/12947?language=swift
//하샤드 수

func solution(_ x:Int) -> Bool {
    var sum = 0
    var temp = x
    
    repeat {
        sum += temp % 10
        temp = Int(temp / 10)
    } while temp != 0
    
    return x % sum == 0
}

//let x: Int = 10
////true

//let x: Int = 12
////true

//let x: Int = 11
////false

//let x: Int = 13
////false

let x: Int = 189
//false

print(solution(x))

