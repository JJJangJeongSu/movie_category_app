class Movie {
  Movie(
      {required this.title,
      required this.imageUrl,
      required this.director,
      required this.genre,
      required this.score,
      required this.isRestricted,
      required this.releasedYear,
      this.isDubbed = false});
  final String title;
  final String imageUrl;
  final String director;
  final List<String> genre;
  final double score;
  final int releasedYear;

  final bool isDubbed;
  final bool isRestricted;
}
