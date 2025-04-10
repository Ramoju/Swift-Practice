func square(number: Int) -> Int{
  return number*number
}

var num:Int? = nil

num = 6

print(square(number: num))
/* the above statement gives error 'value of optional type 'Int?' must be unwrapped to a value of type'Int'' because it is an optional integer and it might have value or nil so it kust be unwrapped
 It gives error even if the variable is intialized with a value later coz it is declared as optional and we have to unwrap it for sure*/

if let unwrappedNum = num {
  print("Sqaure of \(unwrappedNum) is:\(square(number: unwrappedNum))")
}
