import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sun_meet/screens/add_post_screen.dart';
import 'package:sun_meet/screens/feed_screen.dart';
import 'package:sun_meet/screens/profile_screen.dart';
import 'package:sun_meet/screens/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('notifications'),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
