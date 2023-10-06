//dart class extension..
void main() {
  final ChessPiece chessPiece = ChessPiece('ChessPiece');
  print(chessPiece);
  final Pawn whitePawn04 = Pawn("i'm a 04 white pawn");
  print(whitePawn04);
}

class ChessPiece {
  String name = 'Chess Piece';
  ChessPiece(this.name);

  @override
  String toString() {
    // TODO: implement toString
    return "I'm a chess piece. My name is $name.";
  }
}

class Pawn extends ChessPiece{
  Pawn(super.name);
}