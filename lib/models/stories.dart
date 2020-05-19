class Stories {
  final String username;
  final String image;
  final List<StoryImage> storiesImage;

  Stories({
    this.username,
    this.image,
    this.storiesImage,
  });
}

class StoryImage {
  final String image;
  final String time;
  StoryImage({this.image, this.time});
}

List<Stories> storyList = [
  Stories(
    username: "derryjs",
    image: "assets/derry.jpg",
    storiesImage: [
      StoryImage(
        image: "assets/post6.jpeg",
        time: "1 minutes",
      ),
      StoryImage(
        image: "assets/post7.jpeg",
        time: "10 minutes",
      ),
    ],
  ),
  Stories(
    username: "jscvrnd19",
    image: "assets/ve.jpg",
    storiesImage: [
      StoryImage(image: "assets/ve.jpg", time: "23 hours"),
      StoryImage(image: "assets/ve2.jpg", time: "23 hours"),
    ],
  ),
  Stories(
    username: "mhmmdrzhi",
    image: "assets/rozhi.jpg",
    storiesImage: [
      StoryImage(
        image: "assets/rozhi.jpg",
        time: "20 minutes",
      ),
      StoryImage(
        image: "assets/post7.jpeg",
        time: "20 minutes",
      ),
    ],
  ),
  Stories(
    username: "doddyjlanto",
    image: "assets/dody.jpg",
    storiesImage: [
      StoryImage(
        image: "assets/dody.jpg",
        time: "20 minutes",
      ),
      StoryImage(
        image: "assets/post5.jpeg",
        time: "20 minutes",
      ),
    ],
  ),
  Stories(
    username: "gerrysyuds",
    image: "assets/gerry.jpg",
    storiesImage: [
      StoryImage(
        image: "assets/wahyu.jpg",
        time: "20 minutes",
      ),
      StoryImage(
        image: "assets/post5.jpeg",
        time: "20 minutes",
      ),
    ],
  ),
  Stories(
    username: "suryadizaky",
    image: "assets/sor.jpg",
    storiesImage: [
      StoryImage(
        image: "assets/sor.jpg",
        time: "20 minutes",
      ),
      StoryImage(
        image: "assets/post5.jpeg",
        time: "20 minutes",
      ),
    ],
  ),
  Stories(
    username: "wahyu.aprianto",
    image: "assets/wahyu.jpg",
    storiesImage: [
      StoryImage(
        image: "assets/ve.jpg",
        time: "20 minutes",
      ),
      StoryImage(
        image: "assets/post5.jpeg",
        time: "20 minutes",
      ),
    ],
  ),
];
