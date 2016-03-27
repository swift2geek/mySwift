//: Playground - Optionals

var temperature : Int?

// connect to internet, get temperature...
temperature = 31

if temperature != nil {
    // forced unwrapping
    print("The temperature is \(temperature!) degrees")
}

var states = ["AZ":"Arizona", "CA":"California", "DE":"Delaware","KY":"Kentucky"]

if let result = states["CA"] {
    //yes - value found
    print("The state name is \(result)")
} else {
    //no match 
    print("No matching key found")
}