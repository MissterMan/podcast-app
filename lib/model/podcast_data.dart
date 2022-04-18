class PodcastData {
  String nama;
  String authors;
  String imageAsset;

  PodcastData({
    required this.nama,
    required this.authors,
    required this.imageAsset,
  });
}

var podcastDataList = [
  PodcastData(
      nama: "Podcast Kesel Aje",
      authors: "Oza Rangkuti",
      imageAsset: "assets/images/kesel_aje.jfif"),
  PodcastData(
      nama: "Kismin Podcast",
      authors: "Kismin Boys",
      imageAsset: "assets/images/kismin.jfif"),
  PodcastData(
      nama: "Hiduplah Indonesia Maya",
      authors: "Panji Pragiwaksono",
      imageAsset: "assets/images/indonesia_maya.jfif")
];
