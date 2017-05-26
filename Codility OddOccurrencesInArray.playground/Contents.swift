import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

var input = [9, 3, 9, 3, 9, 7, 9]
public func solution(_ A : inout [Int]) -> Int {
  // write your code in Swift 3.0 (Linux)
  var inputElementCountDic = [Int: Int]()
  
  for element in A {
    if let count = inputElementCountDic[element] {
      inputElementCountDic[element] = count + 1
    } else {
      inputElementCountDic[element] = 1
    }
  }
  print(inputElementCountDic.debugDescription)
  let solution = inputElementCountDic.first { (_, count) -> Bool in
    return count%2 != 0
  }
  return solution!.key
}

print(solution(&input))
