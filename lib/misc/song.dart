class Song {
  final String name;
  final String album;
  final bool isPlaying;

  const Song({
    required this.name,
    required this.album,
    required this.isPlaying,
  });
}

List<Song> listSongs() => [
      const Song(
        name: "Ain't No Time",
        album: 'Future',
        isPlaying: false,
      ),
      const Song(
        name: "In Her Mouth",
        album: 'Future',
        isPlaying: false,
      ),
      const Song(
        name: "Low Life",
        album: 'Future • The Weeknd',
        isPlaying: true,
      ),
      const Song(
        name: "Xanny Family",
        album: 'Future',
        isPlaying: false,
      ),
      const Song(
        name: "Lil Haiti Baby",
        album: 'Future',
        isPlaying: false,
      ),
      const Song(
        name: "Photo Copied",
        album: 'Future',
        isPlaying: false,
      ),
      const Song(
        name: "Seven Rings",
        album: 'Future',
        isPlaying: false,
      ),
      const Song(
        name: "Lie To Me",
        album: 'Future',
        isPlaying: false,
      ),
    ];
