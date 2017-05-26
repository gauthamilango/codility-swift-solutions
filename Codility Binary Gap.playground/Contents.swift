import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

let input = 20
public func solution(_ N : Int) -> Int {
  // write your code in Swift 3.0 (Linux)
  let binaryString = String(N, radix: 2)
  var binaryGap = 0
  var localBinaryGap = 0
  let binaryCharacterArray = binaryString.characters
  if !binaryCharacterArray.contains("0") {
    return 0
  }
  for character in binaryCharacterArray {
    if character == "0" {
      localBinaryGap += 1
    } else {
      if localBinaryGap > binaryGap {
        binaryGap = localBinaryGap
      }
      localBinaryGap = 0
    }
  }
  return binaryGap
}

print(solution(input))