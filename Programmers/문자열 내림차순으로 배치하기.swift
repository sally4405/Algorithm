//https://programmers.co.kr/learn/courses/30/lessons/12917?language=swift
//문자열 내림차순으로 배치하기

func solution(_ s:String) -> String {
    return s.sorted(by: >).map({ String($0) }).joined(separator: "")
}

let s: String = "Zbcdefg"
//"gfedcbZ"

print(solution(s))
