

import 'package:flutter/material.dart';

class TestGitScreen extends StatefulWidget {
  const TestGitScreen({super.key});

  @override
  State<TestGitScreen> createState() => _TestGitScreenState();
}

class _TestGitScreenState extends State<TestGitScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("Hello kon papa")
        ],
      ),
    );
  }
}
