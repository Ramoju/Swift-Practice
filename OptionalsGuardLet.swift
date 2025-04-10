func getMeaningOfLife() -> Int? {
  nil
}

func printMeaningOfLife(){
  guard let meaningOfLife = getMeaningOfLife() else {
    print("There is no meaning in Life")
    return
  }
  print(meaningOfLife)
}

printMeaningOfLife()

//Guard is used for early returns in functions. we check for input validity first and then return if there is any invalid input or execute the following code.
