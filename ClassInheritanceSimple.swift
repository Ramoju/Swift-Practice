class Employee {
  var hours: Int
  
  init(hours: Int){
    self.hours = hours
  }
  
  func printSummary(){
    print("I work for \(hours)")
  }
}

class Developer: Employee {
  func work(){
    print("I am a Developer, I code for \(hours)")
  }

  override func printSummary(){
    print("This is Developer's summary")
  }
}

class Manager: Employee {
  func work(){
    print("I am a Manager, I am in meetings for \(hours)")
  }
}

let sravan = Developer(hours: 8)
let sarath = Manager(hours: 9)
sravan.work()
sarath.work()
sravan.printSummary()
