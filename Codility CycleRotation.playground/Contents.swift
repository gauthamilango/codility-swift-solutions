import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

var input = [3, 8, 9, 7, 6]
var inputK = 3

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
  // write your code in Swift 3.0 (Linux)
  var B = A
  
  for (index, element) in A.enumerated() {
    let newIndex = (index + K) % A.count
    B[newIndex] = element
  }
  return B
}

print(solution(&input, inputK))