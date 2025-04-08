protocol Purchaseable {
  var name: String {get set}
}

struct Book: Purchaseable {
  var name: String
  var author: String
}

struct Movie: Purchaseable {
  var name: String
  var actors: [String]
}

struct Album: Purchaseable {
  var name: String
  var artists: [String]
}

struct Car: Purchaseable {
  var name: String
  var manufacturer: String
}

func buy(_ item : Purchaseable){
  print("I am buying \(item.name)")
}

let myCar = Car(name: "Nexon", manufacturer: "TATA")
buy(myCar)

//So, protocols let us create blueprints of how our types share functionality, then use those blueprints in our functions to let them work on a wider variety of data.

