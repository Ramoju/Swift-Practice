
protocol Building{
  var rooms: Int {get}
  var price: Double {get set}
  var agentName: String {get set}
  func printSalesSummary()
}

struct House : Building {
  let rooms: Int
  var price: Double
  var agentName: String
  func printSalesSummary() {
  print("This is a house with \(rooms) rooms worth around \(price). Contact \(agentName) for more details")
  }
}

struct Office: Building {
  let rooms: Int
  var price: Double
  var agentName: String
  func printSalesSummary() {
  print("This is an Office with \(rooms) rooms worth around \(price). Contact \(agentName) for more details")
  }
}

let firstHouse = House(rooms: 4, price: 343790, agentName: "Naveen")
firstHouse.printSalesSummary()
let firstOffice = Office(rooms: 10, price: 637383, agentName: "Reddy")
firstOffice.printSalesSummary()
