class Song {
  String? title;
  String? artist;
  String? duration;
  String? releaseDate;
  Song({
    this.title,
    this.artist,
    this.duration,
    this.releaseDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'artist': artist,
      'duration': duration,
      'releaseDate': releaseDate,
    };
  }

  factory Song.fromMap(Map<String, dynamic> map) {
    return Song(
      title: map['title'] != null ? map['title'] as String : null,
      artist: map['artist'] != null ? map['artist'] as String : null,
      duration: map['duration'] != null ? map['duration'] as String : null,
      releaseDate:
          map['releaseDate'] != null ? map['releaseDate'] as String : null,
    );
  }
}
