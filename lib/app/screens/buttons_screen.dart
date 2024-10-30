import 'package:flutter/material.dart';
import 'package:widgets_flutter/app/widgets/widgets.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  static const String routeName = '/buttons';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextCustomWidget(
          text: 'Botones',
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: const Center(
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 5,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const TextCustomWidget(
              text: 'ElevatedButton',
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const TextCustomWidget(
              text: 'ElevatedButton Icon',
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const TextCustomWidget(
              text: 'OutlinedButton',
            ),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const TextCustomWidget(
              text: 'OutlinedButton Icon',
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const TextCustomWidget(
              text: 'TextButton',
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const TextCustomWidget(
              text: 'TextButton Icon',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
