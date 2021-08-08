//https://programmers.co.kr/learn/courses/30/lessons/82612?language=swift
//부족한 금액 계산하기

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let sum: Int64 = Int64(((count + 1) * count * price) / 2)

    return money > sum ? 0 : sum - Int64(money)
}

let price: Int = 3
let money: Int = 20
let count: Int = 4
//10

print(solution(price, money, count))
