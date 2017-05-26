import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

var input = Array(1...100000)
public func solution(_ A : inout [Int]) -> Int {
  // write your code in Swift 3.0 (Linux)
  var elementCountDic = [Int : Int]()
  
  for (index, element) in A.enumerated() {
    let count = elementCountDic[element] ?? 0
    elementCountDic[element] = count + 1
    
    if elementCountDic[index+1] == nil {
      elementCountDic[index+1] = 0
    }
  }
  
  var zeroCountElements = (elementCountDic.filter { (_, value) -> Bool in
    value == 0
  }).map { (key, _) -> Int in
    key
  }
  
  zeroCountElements.sort()
  
  
  return zeroCountElements.first ?? (A.count + 1) // They never mentioned if the sequence doest have a missing number we can return the next number in sequence
}

print(solution(&input))