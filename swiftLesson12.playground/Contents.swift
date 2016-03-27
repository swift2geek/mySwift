// MARK: 1
//1. Создать энум с шахматными фигруами (король, ферзь и т.д.). Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят), а так же букву и цифру для позиции. Создайте пару фигур с расположением на доске, так, чтобы черному королю был мат :) Поместите эти фигуры в массив фигур

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
// MARK: 2
//2. Сделайте так, чтобы энумовские значения имели rawValue типа String. Каждому типу фигуры установите соответствующее английское название. Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение. Используя эту функцию распечатайте все фигуры в массиве.

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

func printt(figure: Figures) {
    
    let inf = figureInfo(figure)
    print("\(inf.name) \(inf.color.rawValue), \(inf.pos.x)\(inf.pos.y)")
}

func printt(figures: [Figures]) {
    
    for val in figures {
        printt(val)
    }
}

printt(figures)

////3 MARK:
////3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску. Если клетка не содержит фигуры, то используйте белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)

func draw(figures: [Figures]) {
    
    func figureView(figure: Figures) -> Character? {
        
        typealias Colors = Figures.Color
        
        switch figure {
        case let .Pawn(col, _) where col == .White: return "♙"
        case let .Pawn(col, _) where col == .Black: return "♟"
            
        case let .Knight(col, _) where col == .White: return "♘"
        case let .Knight(col, _) where col == .Black: return "♞"
            
        case let .Bishop(col, _) where col == .White: return "♗"
        case let .Bishop(col, _) where col == .Black: return "♝"
            
        case let .Rook(col, _) where col == .White: return "♖"
        case let .Rook(col, _) where col == .Black: return "♜"
            
        case let .Queen(col, _) where col == .White: return "♕"
        case let .Queen(col, _) where col == .Black: return "♛"
            
        case let .King(col, _) where col == .White: return "♔"
        case let .King(col, _) where col == .Black: return "♚"
        default: return nil
        }
    }
    func figure(pos: Figures.Pos) -> Character? {
        
        for val in figures {
            
            let info = figureInfo(val)
            
            if pos.x == info.pos.x && pos.y == info.pos.y {
                return figureView(val)
            }
        }
        return nil
    }
    let hor = "abcdefgh"
    let ver = 1...8
    
    for i in ver {
        printt("\(9 - i)");
        for (j, x) in hor.characters.enumerate() {
            
            if let figure = figure((x, 9 - i)) {
            printt(piece)
            continue
            }
            
            printt(i % 2 == j % 2 ? "◼️" : "◻️")
            
        }
        print()
    }
    print("    a   b  c   d   e  f   g   h")
}

draw(figures)

