
struct Book{
  let title: String
  let author: String?
}

var book:Book? = nil
let author = book?.author?.first?.uppercased() ?? "S"

print(author)

//Here if any of the optional variables(book or author or first) contains nil, total expression fails and returns default value S after nil coalescing operator
