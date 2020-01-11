class Photo {
  String photoId;
  String id;
  String title;
  String url;
  String thumbnailUrl;

  Photo({this.photoId, this.id, this.title, this.url, this.thumbnailUrl}); 

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      photoId: json['photoId'],
      id: json['id'] ,
      title: json['title'] ,
      url: json['url'] ,
      thumbnailUrl: json['thumbnailUrl'] ,
  
    );
  }
}
