
// Implementing the Song class
class Song {
  // Properties to store the song's details
  String title;
  String artist;
  int duration; // duration in seconds

  // Constructor to initialize a Song object
  Song(this.title, this.artist, this.duration);

  // Method to display song details
  void displaySong() {
    print('Song: $title by $artist, Duration: ${duration}s');
  }
}

// Implementing the Playlist class
class Playlist {
  // Properties to store the playlist's details
  String name;
  List<Song> songs;

  // Constructor to initialize a Playlist object
  Playlist(this.name) : songs = [];

  // Method to add a song to the playlist
  void addSong(Song song) {
    songs.add(song);
  }

  // Method to display all songs in the playlist
  void displayPlaylist() {
    print('Playlist: $name');
    for (var song in songs) {
      song.displaySong();

    }
  }
}

// Implementing the MusicFestival class
class MusicFestival {
  // Properties to store the music festival's details
  String name;
  List<Playlist> stages;

  // Constructor to initialize a MusicFestival object
  MusicFestival(this.name) : stages = [];

  // Method to add a playlist (stage) to the festival
  void addStage(Playlist playlist) {
    stages.add(playlist);
  }

  // Method to display all stages and their songs
  void displayFestival() {
    print('Music Festival: $name');
    print(''); // Add Space
    for (var stage in stages) {
      stage.displayPlaylist();
      print(''); // Add Space

    }
  }
}

void main() {
  print('Welcome to the Music Festival Playlist Manager!');

  // Creating songs
  var song1 = Song('STAY', 'Justine Bieber', 210);
  var song2 = Song('INTENTION ', 'Justine Bieber', 180);
  var song3 = Song('GHOST', 'Justine Bieber', 240);
  var song4 = Song('PEACHES', 'Justine Bieber', 200);
  var song5 = Song('YUMMY', 'Justine Bieber', 230);
  var song6 = Song('I DONT CARE', 'Justine Bieber', 250);
  var song7 = Song('SORRY', 'Justine Bieber', 190);
  var song8 = Song('IM THE ONE', 'Justine Bieber', 220);
  var song9 = Song('LOVE YOUR SELF ', 'Justine Bieber', 210);
  var song10 = Song('NEVER SAY NEVER', 'Justine Bieber', 185);
  var song11 = Song('LET ME LOVE YOU', 'Justine Bieber', 185);
  var song12 = Song('BOYFRIEND', 'Justine Bieber', 185);
  var song13 = Song('ONE TIME ', 'Justine Bieber', 185);
  var song14 = Song('COMPANY', 'Justine Bieber', 185);
  var song15 = Song('ILL SHOW YOU', 'Justine Bieber', 185);

  // Creating playlists (stages)
  var stage1 = Playlist('Main Stage');
  var stage2 = Playlist('Indie Stage');
  var stage3 = Playlist('Electronic Stage');

  // Adding songs to the playlists
  stage1.addSong(song1);
  stage1.addSong(song2);
  stage1.addSong(song3);
  stage1.addSong(song4);
  stage1.addSong(song5);

  stage2.addSong(song6);
  stage2.addSong(song7);
  stage2.addSong(song8);
  stage2.addSong(song9);
  stage2.addSong(song10);

  stage3.addSong(song11);
  stage3.addSong(song12);
  stage3.addSong(song13);
  stage3.addSong(song14);
  stage3.addSong(song15);

  // Creating the music festival
  var festival = MusicFestival('Summer Fest');

  // Adding playlists to the music festival
  festival.addStage(stage1);
  festival.addStage(stage2);
  festival.addStage(stage3);

  // Displaying the music festival details
  festival.displayFestival();
}
