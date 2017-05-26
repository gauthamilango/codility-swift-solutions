import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

let a = 100
let b = 150
let c = 60

public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
  // write your code in Swift 3.0 (Linux)
  
  let remainderOfADivdByK = A % K

  var startingDivElement = A
  if remainderOfADivdByK != 0 {
   startingDivElement = A + (K - remainderOfADivdByK)
  }
  
  let x = startingDivElement / K
  let y = B / K
  
  let countDiv = y - x + 1
  
  return countDiv
}

print(solution(a, b, c))