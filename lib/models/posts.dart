import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postID;
  final datePublished;
  final String postURL;
  final String profImage;
  final likes;

  const Post({
    required this.description,
    required this.uid,
    required this.username,
    required this.postID,
    required this.datePublished,
    required this.postURL,
    required this.profImage,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        "description": description,
        "uid": uid,
        "username": username,
        "postID": postID,
        "datePublished": datePublished,
        "postURL": postURL,
        "profImage": profImage,
        "likes": likes,
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      description: snapshot['email'],
      uid: snapshot['uid'],
      username: snapshot['photoURL'],
      postID: snapshot['username'],
      datePublished: snapshot['bio'],
      postURL: snapshot['followers'],
      profImage: snapshot['following'],
      likes: snapshot['likes'],
    );
  }
}
