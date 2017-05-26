import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

var input = [1, 2, 3, 5, 4, 6, 7, 8, 9]
input.append(contentsOf: 10..<100000)
input.append(100001)
public func solution(_ A : inout [Int]) -> Int {
  // write your code in Swift 3.0 (Linux)
  let sumOfArrayWithMissingElement = ((A.count + 1) * (A.count + 2))/2
  let sumOfInputArray = A.reduce(0, +)
  
  return sumOfArrayWithMissingElement - sumOfInputArray
}



print(solution(&input))

