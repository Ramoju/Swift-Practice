struct App{
  var contacts = [String]() {
    willSet{
      print("Current value is \(contacts)")
      print("New value is \(newValue)")
    }
    didSet{
      print("There are now \(contacts.count) contacts")
      print("Old value was: \(oldValue)")
    }
  }
}

var app = App()
app.contacts.append("Sandeep")
app.contacts.append("Vinod")
app.contacts.append("Kapil")
app.contacts.append("Tarun")
app.contacts.append("Vinay")
