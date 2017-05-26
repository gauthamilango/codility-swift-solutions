//: Playground - noun: a place where people can play

import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")
var input =  [-1, 3, -4, 5, 1, -6, 2, 1]

public func solution(_ A : inout [Int]) -> Int {
  // write your code in Swift 3.0 (Linux)
  var left: Int = 0
  var right: Int = A[0..<A.count].reduce(0, +)
  right -= A[0]
  if left == right {
    return 0
  }
  for p in 1..<(A.count) {
    left += A[p-1]
    right -= A[p]
    if left == right {
      return p
    }
  }
  return -1
}

print(solution(&input))
