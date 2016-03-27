struct Piece {
    var name : String
    var color : String
    var pos : (x: String, y: Int)
}

var p1 = Piece(name: "King", color: "Black", pos: ("d", 5))
var p2 = Piece(name: "King", color: "White", pos: ("d", 7))
var p3 = Piece(name: "Knight", color: "Black", pos: ("c", 6))
var p4 = Piece(name: "Rook", color: "Black", pos: ("e", 2))
var p5 = Piece(name: "Rook", color: "Black", pos: ("h", 8))
var p6 = Piece(name: "Pawn", color: "White", pos: ("b", 4))

//var blackK = Piece(name: ""◼️◻️

// figureCodes

let whiteKingCode = "\u{2654}", whiteQueenCode = "\u{2655}", whiteRookCode = "\u{2656}"
let whiteBishopCode = "\u{2657}", whiteKnightCode = "\u{2658}", whitePawnCode = "\u{2659}"

let blackKingCode = "\u{265a}", blackQueenCode = "\u{265B}", blackRookCode = "\u{265c}"
let blackBishopCode = "\u{265d}", blackKnightCode = "\u{265e}", blackPawnCode = "\u{265F}"


//
var pieces = [p1, p2, p3, p4, p5, p6]
var piecesPos = [p1.pos, p2.pos, p3.pos, p4.pos, p5.pos, p6.pos]
//print(pieces)

    func printPiece(name: String, color: String, pos: (String, Int)) -> () {
        print("name: \(name), color: \(color), pos: \(pos)")
    }

printPiece(p1.name, color: p1.color, pos: p1.pos)


func checkCombination(combination: (String, Int)) -> Bool {
    
    var isChecked = false
   
    
    for var i = 0; i < piecesPos.count; i++ {
        
        let tuple = piecesPos[i]
    
        if (tuple.x == combination.0 && tuple.y == combination.1) {
            isChecked = true
            break
        }
            
        else {
            isChecked = false
        }
        
    }
    return isChecked
}


var arrayChar = ["a", "b", "c", "d", "e", "f", "g", "h"]

for var i = 1; i < 9; i++ {
    
    print(" ")
    print("\t\(i)", terminator:"")
    
        for var j = 1; j < 9; j++ {
        
            var c = checkCombination((arrayChar[j - 1], number: i))
            
            
       
        
        if j % 2 == i % 2 {
            if c {
                print("\u{265a}", terminator:"")
            }
            else {
        
                print("◻️", terminator:"")
            }
        }
        else {
            if c {
                print("\u{2654}", terminator:"")
            }
            else {
                
                print("◼️", terminator:"")
            }
            
        }
     
    }

}
print("")
print("\t a", " b", "c", "d", " e", "f", "g", "h")
    
