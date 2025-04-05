struct Player{
  let name: String
  let number: Int

  //Memberwise initializer. this contains all properties
  init(name: String, number: Int){
    self.name = name
    self.number = number
  }
  //Custom initializer where we send only few properties as parameters but set all other properties inside 
  //because Swift requires us to set all property values when initializer is called.
  init(name: String){
    self.name = name
    number = Int.random(in: 1...90)
  }
  init(number: Int){
    self.number = number
    name = "Player " + String(Int.random(in: 1...100))
  }
}
