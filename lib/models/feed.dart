class Feed {
  final String image;
  final String caption;
  final String like;
  final String comment;
  final String time;
  final String username;
  final String location;
  final String userImage;

  Feed({
    this.caption,
    this.comment,
    this.image,
    this.like,
    this.location,
    this.time,
    this.userImage,
    this.username,
  });
}

List<Feed> dummyFeed = [
  Feed(
    userImage: "assets/ve.jpg",
    username: "d.reynaldi",
    location: "Sukaharja, Indonesia",
    image: "assets/post3.png",
    like: "912,230",
    caption:
        "Yeay, akhirnya aku menyelesaikan 12 quest dari #JuaraGCP yang dilaksanakan oleh @GoogleDevsIndonesia",
    comment: "215",
    time: "1",
  ),
  Feed(
    userImage: "assets/rozhi.jpg",
    username: "mhmmdrzhi",
    location: "Kalinilam, Indonesia",
    image: "assets/post4.jpeg",
    like: "2,244",
    caption:
        "Jangan lupa kawan, subscribe channelku. Wallet gik kering wkwkwk..",
    comment: "152",
    time: "4",
  ),
  Feed(
    userImage: "assets/sor.jpg",
    username: "suryadizaky",
    location: "Politeknik Negeri Ketapang",
    image: "assets/post5.jpeg",
    like: "155,522",
    caption: "Petinggi HMJ Jurusan Teknik Informatika",
    comment: "2,533",
    time: "7",
  ),
  Feed(
    userImage: "assets/wahyu.jpg",
    username: "wahyu.apri",
    location: "Gg. Kutilang",
    image: "assets/post6.jpeg",
    like: "152",
    caption: "Yom mabar, masih noob nih hehehe",
    comment: "143",
    time: "9",
  ),
  Feed(
    userImage: "assets/derry.jpg",
    username: "derryjs",
    location: "Sukaharja, Indonesia",
    image: "assets/post7.jpeg",
    like: "1,242,232",
    caption: "Mabar with squad bosquee",
    comment: "23,253",
    time: "2",
  ),
];
