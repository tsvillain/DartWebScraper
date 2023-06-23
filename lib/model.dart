class Links {
  String title;
  String link;
  Links({
    this.link,
    this.title,
  });


  Links.fromMap(Map<String, dynamic> map) {
    title = map['title'];
    link = map['link'];
  }

  toJson() {
    return {'title': title, 'link': link};
  }
}
