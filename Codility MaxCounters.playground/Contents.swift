import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")
var input = [3, 4, 4, 6, 1, 4, 4]
let n = 5
public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
  
  let emptyCounterArray = [Int](repeating: 0, count: N)
  var counterArray = emptyCounterArray
  var maxDiff = 0
  var maxedTo = 0
  for element in A {
    if (element<=N) {
      let counterIndex = element - 1
      counterArray[counterIndex] += 1
      if counterArray[counterIndex] > maxDiff {
        maxDiff = counterArray[counterIndex]
      }
    } else if (element == N+1) {
      maxedTo += maxDiff
      maxDiff = 0
      counterArray = emptyCounterArray
    }
  }
  var result = [Int]()
  counterArray.forEach({ result.append(maxedTo + $0) })
  return result
}

print(solution(n, &input))