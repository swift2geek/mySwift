// -- 7 --
import Foundation
enum Chess : Int {
    static let numberOfPieces = 6
    case King, Queen, Rook, Bishop, Knight, Pawn
}

Chess.King.rawValue
Chess.Rook.rawValue

enum Type : String {
    case White = "White"
    case Black = "Black"
}

class Figure {
    let name: Chess
    let color: Type
    let position: (col: Character, row: Int)
    init(name: Chess, color: Type, position: (col: Character, row: Int)) {
        self.name = name
        self.color = color
        self.position = position
    }
}


var KingB = Figure(name: .King, color: .Black, position: ("D", 5))
var KingW = Figure(name: .King, color: .White, position: ("D", 7))
var KnightB = Figure(name: .Knight, color: .Black, position: ("C", 6))
var RookB = Figure(name: .Rook, color: .Black, position: ("E", 2))
var RookB2 = Figure(name: .Rook, color: .Black, position: ("H", 8))
var PawnW = Figure(name: .Pawn, color: .White, position: ("B", 4))

var figuresOnBoard: [Figure] = [KingB, KingW, KnightB, RookB, RookB2, PawnW]
print(KingW.position)


Chess.Bishop.rawValue


func toString(type: Type, piece: Chess) -> String {
    //  let numberOfPieces = 6
    let delta = type == .White ? 0 : Chess.numberOfPieces
    let unicode = 0x2654 + piece.rawValue + delta
    let scalar = UnicodeScalar(unicode)
    return String(scalar)
}

toString(.Black, piece: .Knight)

//clear board ---------=========================-------------

enum ColorCell : String {
    case white = "\u{25A0}"
    case black = "\u{25A1}"
}

enum Figures: String {
    case kingWhite = "\u{2654}"
    case rookWhite = "\u{2656}"
    case queenWhite = "\u{2655}"
    case kingBlack = "\u{265A}"
    
}

let kingWhite = (Figures.kingWhite, "H", 1)
let rookWhite = (Figures.rookWhite, "F", 2)
let queenWhite = (Figures.queenWhite, "G", 1)
let kingBlack = (Figures.kingBlack, "E", 1)

let arrayChess = [kingWhite, rookWhite, queenWhite, kingBlack]

let numberChessBoard = [8, 7, 6, 5, 4, 3, 2, 1]
let charChessBoard = ["A", "B", "C", "D", "E", "F", "G", "H"]

func someArray (array:[(Figures,String,Int)]) {
for i in 0...8 {
    var horizontalCell = " "
    
    for j in 0...7 {
        
        var addValue: (String) = " "
        //add char
        if i == 0 {
        addValue = " " + charChessBoard[j]
            
        } else {
            // add numbers
            if j == 0 {
                horizontalCell += String(numberChessBoard[i - 1])
            }
            
            //add cells
            if (i + j) % 2 == 0 ? true : false {
                addValue = ColorCell.white.rawValue
            } else {
                addValue = ColorCell.black.rawValue
            }
            
            //add figure
            for chessPosition in arrayChess {
                if chessPosition.1 == charChessBoard[j] && chessPosition.2 == numberChessBoard[i-1] {
                    addValue = chessPosition.0.rawValue
                }
            }
            horizontalCell += " "
        }
        horizontalCell += addValue
}
print(horizontalCell)
}
}
someArray(arrayChess)
//func printBoard(figures: [Figure]) {
//    for var i = 1; i < 9; i++ {
//        print(" ")
//        print("\t\(i)", terminator:"")
//        
//        for var j = 1; j < 9; j++ {
//            if j % 2 == i % 2 {
//                print("◻️", terminator:"")
//            }
//            else {
//                print("◼️", terminator:"")
//            }
//            
//        }
//    }
//}

