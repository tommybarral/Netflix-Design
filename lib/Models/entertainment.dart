class Entertainment {
  final String title;
  final String coverUrl;
  final String description;
  final List<String> categories;
  final int year;
  final String length;
  final String country;
  final int season;
  final List<String> cast;
  final Map<String, String> director;

  const Entertainment({
    required this.title,
    required this.coverUrl,
    required this.description,
    required this.categories,
    required this.year,
    required this.length,
    required this.country,
    required this.season,
    required this.cast,
    required this.director,
  });
}