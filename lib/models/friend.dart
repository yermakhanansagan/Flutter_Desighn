class Friend{
  final String name;
  final String position;
  final String avatar;

  Friend(this.name, this.position, this.avatar);
}
Friend george = new Friend("Corey George", "Developer", "lib/assets/images/friends/corey.png");
Friend vetrovs = new Friend("Ahmad Vetrovs", "Developer", "lib/assets/images/friends/ahmad.png");
Friend workman = new Friend("Cristofer Workman", "Developer", "lib/assets/images/friends/christofer.png");
Friend korsgaard = new Friend("Tiana Korsgaard", "Developer", "lib/assets/images/friends/tiana.png");
List<Friend> friends = [george, vetrovs, workman, korsgaard];