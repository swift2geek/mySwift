enum Figures {
    
    enum Color: String {
        case White = "White", Black = "Black"
    }
    typealias Pos = (x: Character, y: Int)
    
    case King(Color, Pos)
    case Queen(Color, Pos)
    case Rook(Color, Pos)
    case Bishop(Color, Pos)
    case Knight(Color, Pos)
    case Pawn(Color, Pos)
}

var f1 = Figures.King(.Black, ("d", 5))
var f2 = Figures.King(.White, ("d", 7))
var f3 = Figures.Knight(.Black, ("c", 6))
var f4 = Figures.Rook(.Black, ("e", 2))
var f5 = Figures.Rook(.Black, ("h", 8))
var f6 = Figures.Pawn(.White, ("b", 4))

var figures = [f1, f2, f3, f4, f5, f6]
print(figures)


typealias FigureInfo = (name: String, color: Figures.Color, pos: Figures.Pos)

enum figuresNames: String {
    case King = "King"
    case Queen = "Queen"
    case Rook = "Rook"
    case Bishop = "Bishop"
    case Knight = "Knight"
    case Pawn = "Pawn"
}

func figureInfo(figure: Figures) -> FigureInfo {
    
    typealias Names = figuresNames
    
    switch figure {
    case let .Pawn(col, pos) : return (Names.Pawn.rawValue, col, pos)
    case let .King(col, pos) : return (Names.King.rawValue, col, pos)
    case let .Queen(col, pos) : return (Names.Queen.rawValue, col, pos)
    case let .Rook(col, pos) : return (Names.Rook.rawValue, col, pos)
    case let .Knight(col, pos) : return (Names.Knight.rawValue, col, pos)
    case let .Bishop(col, pos) : return (Names.Bishop.rawValue, col, pos)
    }
}
figureInfo(f1)