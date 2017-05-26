import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")
var input = [1, 3, 1, 4, 2, 3, 5, 4]
let x = 3
public func solution(_ X : Int, _ A : inout [Int]) -> Int {
  // write your code in Swift 3.0 (Linux)
  var positionCountDic = [Int : Int]()
  
  for (index, leafsPosition) in A.enumerated() {
    
    if leafsPosition < X+1 {
      if let count = positionCountDic[leafsPosition] {
        positionCountDic[leafsPosition] = count + 1
      } else {
        positionCountDic[leafsPosition] = 1
        if positionCountDic.keys.count == X {
          return index
        }
      }
    }
  }
  
  return -1
}

print(solution(x, &input))