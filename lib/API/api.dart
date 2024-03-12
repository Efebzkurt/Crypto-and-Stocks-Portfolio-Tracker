import 'package:portfolio_app/model/datamodel.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

//Function to call the API
Future<List<Data>> getPosts() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/albums/1/photos");
  final response =
      await http.get(url, headers: {"Content-Type": "application/json"});
  final List body = json.decode(response.body);
  return body.map((e) => Data.fromJson(e)).toList();
}

Future<List<Data>> postsFuture = getPosts();

Widget buildPosts(List<Data> posts) {
  return ListView.builder(
    primary: false,
    shrinkWrap: true,
    itemCount: posts.length,
    itemBuilder: (context, index) {
      final post = posts[index];
      return Container(
        color: Colors.grey.shade300,
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        height: 100,
        width: double.maxFinite,
        child: Row(
          children: [
            Expanded(flex: 1, child: Image.network(post.url!)),
            const SizedBox(width: 10),
            Expanded(flex: 3, child: Text(post.title!)),
          ],
        ),
      );
    },
  );
}
