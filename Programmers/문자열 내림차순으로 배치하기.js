// https://programmers.co.kr/learn/courses/30/lessons/12917

function solution(s) {
  return s.split("").sort().reverse().join("");
}

const s = "Zbcdefg";
// gfedcbZ

console.log(solution(s));
