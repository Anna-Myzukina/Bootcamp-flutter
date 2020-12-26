class Movie {
  Movie(
      {this.id, this.title, this.overview, this.posterPath, this.releaseDate});

  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final String releaseDate;

  factory Movie.fromJSON(Map<String, dynamic> json) {
    return Movie(
        id: json['id'],
        title: json['title'],
        overview: json['overview'],
        posterPath: 'https://image.tmdb.org/t/p/w342' + json['poster_path'].toString(),
        releaseDate: json['release_date']);
  }
}
