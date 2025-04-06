struct Car{
  let model: String
  let numOfSeats: Int
  private(set) var currentGear: Int = 1

  init(model: String, numOfSeats: Int){
    self.model = model
    self.numOfSeats = numOfSeats
  }

  mutating func changeGear(upOrDown: String) -> String{
    var message: String = ""
    if upOrDown == "UP"{
      if self.currentGear < 10 {
        self.currentGear += 1
        message = "Gear up and is now at " + String(self.currentGear)
      } else {
        message = "Can't go further up, already at max gear"
      }
    } else if upOrDown == "DOWN"{
      if self.currentGear > 0 {
        self.currentGear -= 1
        message = "Gear down and is now at " + String(self.currentGear)
      } else {
        message = "Can't go further down, already at min gear"
      }
    } else {
      message = "Invalid input"
    }
    return message
  }
}

var swift = Car(model: "Swift", numOfSeats: 4)
print(swift.changeGear(upOrDown: "UP"))
