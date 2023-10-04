void main() {
  final Song mglduu = Song('Boroo', 'Tatar');
  print(mglduu);
mglduu.showArtist();
mglduu.showTitle();
final Song duu = Song('Human', 'Reg n bone');
print(duu);
duu.showArtist();
duu.showTitle();
}

class Song {
  String _title;
  String _artist;
  String get getTitle{
    return _title;
  }
  String get getArtist{
    return _artist;
  }
  set setTitle(String title){
    _title = title;
  }
  set setArtist(String artist){
    _artist = artist;
  }
  void showArtist(){
    print(_artist);
  }
  void showTitle(){
    print(_title);
  }

  Song(this._title, this._artist);

  @override
  String toString() {
    // TODO: implement toString
    return 'Song{title:$_title, artist: $_artist}';
  }
}