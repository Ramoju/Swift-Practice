enum RequestError: Error {
  case badRequest, InvalidCredentials
}

func makeRequest(reqid: Int) throws -> String {
  throw RequestError.badRequest
}

if let user = try? makeRequest(reqid: 7) {
  print("User is:\(user)")
}

let user = (try? makeRequest(reqid: 5)) ?? "Requested"

print(user)

/* try? optional can be used when we know if any function call throws any errors and we don't want to know or handle those errors. this is used if we just want to know if success or failure or use some default value using nil coalescing in case of failure */
