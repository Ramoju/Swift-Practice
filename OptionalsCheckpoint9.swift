
func getRandomNumber(inputArray: [Int]?) -> Int {
  inputArray?.randomElement() ?? Int.random(in: 1...100)
}

print(getRandomNumber(inputArray: [2,3,4,6,9]))

// this is checkpoint 9 of 100 days pof SwiftUI by paul hudson.
