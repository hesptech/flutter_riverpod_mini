import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Main Screen'),
      ),
      body: const _HomeMainScreenView(),
    );
  }
}

class _HomeMainScreenView extends StatelessWidget {
  const _HomeMainScreenView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomListTile(
            title: 'Riverpod Simple',
            subTitle: 'vers. 2.0',
            location: '/simple-home-riverpod'),
        _CustomListTile(
            title: 'Riverpod Annotations',
            subTitle: 'vers. 3.0',
            location: '/home-riverpod'),
        _CustomListTile(
            title: 'Counter Change Notifier',
            subTitle: 'MVVM Pattern',
            location: '/counter-change-notifier'),
      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;

  const _CustomListTile({
    required this.title,
    required this.subTitle,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(location),
    );
  }
}
