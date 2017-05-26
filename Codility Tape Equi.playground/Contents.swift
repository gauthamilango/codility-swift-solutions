import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

var input = [3, 1, 4]
public func solution(_ A : inout [Int]) -> Int {
  // write your code in Swift 3.0 (Linux)
  var leftSum = A[0]
  var rightSum = A[1..<A.count].reduce(0, +)
  var minDiff = abs(leftSum - rightSum)

  for p in 2..<A.count {
    leftSum += A[p-1]
    rightSum -= A[p-1]
    let diff = abs(leftSum - rightSum)
    if minDiff > diff {
      minDiff = diff
    }
  }
  return minDiff
}

print(solution(&input))