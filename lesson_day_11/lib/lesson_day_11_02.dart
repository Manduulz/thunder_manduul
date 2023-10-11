abstract class Media {
  String title;
  int duration;
  Media(this.title, this.duration);
  void play();
  void stop();
}
class Song extends Media {
  String artist;
  Song(super.title, super.duration, this.artist);

  @override
  void play() {
    print("Playing $title by $artist");
  }

  @override
  void stop() {
    print("Stopped $title by $artist");
  }
}
class Movie extends Media {
  String director;
  Movie(super.title, super.duration, this.director);

  @override
  void play() {
    print("Playing $title by $director");
  }

  @override
  void stop() {
    print("Stopped $title by $director");
  }
}
void main () {
  Song song = Song('Bohemian Rhapsody', 4, 'Queen');
  song.play();
  song.stop();
  Movie movie = Movie('The Shawshank Redemption', 120, 'Frank Darabont');
  movie.play();
  movie.stop();
}