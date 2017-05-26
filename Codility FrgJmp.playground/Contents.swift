import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

let x = 10
let y = 85
let d = 30
public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
  // write your code in Swift 3.0 (Linux)
  let distanceNeededToBeJumped = y - x
  var jumpsNeeded = distanceNeededToBeJumped / D
  if distanceNeededToBeJumped % D != 0 {
    jumpsNeeded += 1
  }
  return jumpsNeeded
}

print(solution(x, y, d))