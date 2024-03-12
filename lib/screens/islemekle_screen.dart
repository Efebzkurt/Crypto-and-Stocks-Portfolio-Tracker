import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio_app/API/api.dart';
import 'package:portfolio_app/constants/colors.dart';
import 'package:portfolio_app/components/searchbar/searchbar.dart';
import 'package:portfolio_app/model/datamodel.dart';

class IslemekleScreen extends StatefulWidget {
  const IslemekleScreen({super.key});

  @override
  State<IslemekleScreen> createState() => _IslemekleScreenState();
}

class _IslemekleScreenState extends State<IslemekleScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor(backgroundColor),
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: SrcBar(),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: FutureBuilder<List<Data>>(
                    future: postsFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.hasData) {
                        final posts = snapshot.data!;
                        return buildPosts(posts);
                      } else {
                        return const Text("No data available");
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
