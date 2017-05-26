import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

var firstInput = [1]
var secondInput = [4, 1, 3]
public func solution(_ A : inout [Int]) -> Int {
  // write your code in Swift 3.0 (Linux)
//  A.sort()
  var inputElementCountDic = [Int: Int]()
  
  var max = 0
  for element in A {
    if let _ = inputElementCountDic[element] {
      return 0
    } else {
      inputElementCountDic[element] = 1
    }
    
    if max < element {
      max = element
    }
  }
  
  for element in 1..<(max + 1)  {
    if inputElementCountDic[element] == nil {
      return 0
    }
  }
  return 1
}

print(solution(&firstInput))
print(solution(&secondInput))