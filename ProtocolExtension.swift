protocol Person{
  var name: String {get}
  func sayHello()
}

extension Person{
  func sayHello(){
    print("Hi I am \(name)")
  }
}

struct Employee: Person{
  let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

/*the Swift developers don’t want to write this same function or closure again and again, so we used a protocol extension: we can write a single method that works on a protocol called Person, which all structs like Employee, manager conform to. This meant the sayHello() method immediately became available on all those types, sharing exactly the same code. Also, if the method is defined in the extension of protocol and not in protocol, all types conforming the protocol need not implement the method belonging to the extension*/
