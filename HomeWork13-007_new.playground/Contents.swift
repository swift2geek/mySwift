"\u{2654}, \u{265A}"
"\u{2655}, \u{265B}"
"\u{2656}, \u{265C}"
"\u{2657}, \u{265D}"
"\u{2658}, \u{265E}"
"\u{2659}, \u{265F}"

//let blackCell = "\u{25A0}"
//let whiteCell = "\u{25A1}"
//var chessBoardArray = [[String]]()



enum Chess : Int {
    static let numberOfPieces = 6
    case King, Queen, Rook, Bishop, Knight, Pawn
}

Chess.King.rawValue
Chess.Rook.rawValue

enum Type {
    case White
    case Black
}

Chess.Bishop.rawValue


func toString(type: Type, piece: Chess) -> String {
  //  let numberOfPieces = 6
    let delta = type == .White ? 0 : Chess.numberOfPieces
    let unicode = 0x2654 + piece.rawValue + delta
    let scalar = UnicodeScalar(unicode)
    return String(scalar)
}

toString(.Black, piece: .Knight)


// create Clear chessBoard
//
for var i = 1; i < 9; i++ {
    print(" ")
    print("\t\(i)", terminator:"")
    
    for var j = 1; j < 9; j++ {
        if j % 2 == i % 2 {
                print("◻️", terminator:"")
            }
                            else {
                print("◼️", terminator:"")
            }
    }
}
