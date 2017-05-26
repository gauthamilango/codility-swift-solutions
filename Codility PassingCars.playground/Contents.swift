import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

var input = [0,1]
public func solution(_ A : inout [Int]) -> Int {
  // write your code in Swift 3.0 (Linux)
  var passingCars = 0
  var suffixSumArray = [Int]()
  for index in (0..<A.count).reversed() {
    if index == (A.count - 1) {
      suffixSumArray.append(A[index])
    } else {
      suffixSumArray.insert(A[index] + suffixSumArray[0], at: 0)
      if A[index] == 0 {
        passingCars += suffixSumArray[0]
        if passingCars > 1000000000 {
          return -1
        }
      }
    }
  }
  
  return passingCars
}

print(solution(&input))