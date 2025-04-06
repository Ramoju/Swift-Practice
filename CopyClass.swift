class User{
  var username = "Anonymous"

  func copy() -> User{
    let user = User()
    user.username = username
    return user
  }
}

var user1 = User()
var user2 = user1.copy()
user2.username = "Batman"

print(user1.username)  // prints Anonymous
print(user2.username)  // prints Batman

// The copy function in User class makes sure propertie values don't change even when copied and modified unlike regular class copy 
