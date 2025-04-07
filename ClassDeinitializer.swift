class User{
  var id: Int

  init(id: Int){
    self.id = id
    print("User \(id): I am alive!")
  }

  deinit{
    print("User \(id): I am dead!")
  }
}

var users = [User]()

for i in 1...3{
  let user = User(id: i)
  print("User \(i) I am in Control!")
  users.append(user)
}

print("Loop is complete!")
users.removeAll()
print("Array is cleared now!")

// Here all user instances are cleared(means deinit is called) at once when users.removeAll() is executed because references are in array variable defined outside the loop
// whereas if there is no array variable deinit is called for every iteration as local variable(reference) gets destroyed after every iteration
