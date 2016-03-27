func calculateMoney(wallet: [Int]) {
    var sum = 0
    for value in wallet {
        sum += value
    }
    print("Sum = \(sum)")
}


let wallet = [100, 5, 1, 5, 10, 20, 50, 100, 50]


calculateMoney(wallet)