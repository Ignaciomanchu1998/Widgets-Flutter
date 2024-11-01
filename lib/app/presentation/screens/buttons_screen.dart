import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Imports
import '../presentation.dart';

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
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        spacing: 6,
        runSpacing: 10,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          // * ElevatedButton
          _ElevatedButton(),

          // * ElevatedButton Icon
          _ElevatedButtonWithIcon(),

          // * OutlinedButton
          _OutlineButton(),

          // * OutlinedButton Icon
          _OutlineButtonWithIcon(),

          // * TextButton
          _TextButton(),

          // * TextButton Icon
          _TextButtonWithIcon(),

          // * IconButton
          _IconButton(),

          // * CustomButton with button
          _ButtonCustomWithInkWell(),

          // * CustomButton with icon
          _ButtonCustomIconWithInkWell(),
        ],
      ),
    );
  }
}

class _ElevatedButton extends StatelessWidget {
  const _ElevatedButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.pushNamed(
        CodeScreenShared.routeName,
        extra: {
          'screenName': 'ElevatedButton',
          'code': '''
            ElevatedButton(
              onPressed: () {}
              child: const TextCustomWidget(
                text: 'ElevatedButton',
              ),
            )
          '''
        },
      ),
      child: const TextCustomWidget(
        text: 'ElevatedButton',
      ),
    );
  }
}

class _ElevatedButtonWithIcon extends StatelessWidget {
  const _ElevatedButtonWithIcon();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => context.pushNamed(
        CodeScreenShared.routeName,
        extra: {
          'screenName': 'ElevatedButton Icon',
          'code': '''
            ElevatedButton(
              onPressed: () {}
              child: const TextCustomWidget(
                text: 'ElevatedButton',
              ),
            )
          '''
        },
      ),
      icon: const Icon(Icons.add),
      label: const TextCustomWidget(
        text: 'ElevatedButton Icon',
      ),
    );
  }
}

class _OutlineButton extends StatelessWidget {
  const _OutlineButton();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => context.pushNamed(
        CodeScreenShared.routeName,
        extra: {
          'screenName': 'OutlinedButton',
          'code': '''
            ElevatedButton(
              onPressed: () {}
              child: const TextCustomWidget(
                text: 'ElevatedButton',
              ),
            )
          '''
        },
      ),
      child: const TextCustomWidget(
        text: 'OutlinedButton',
      ),
    );
  }
}

class _OutlineButtonWithIcon extends StatelessWidget {
  const _OutlineButtonWithIcon();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () => context.pushNamed(
        CodeScreenShared.routeName,
        extra: {
          'screenName': 'OutlinedButton Icon',
          'code': '''
            ElevatedButton(
              onPressed: () {}
              child: const TextCustomWidget(
                text: 'ElevatedButton',
              ),
            )
          '''
        },
      ),
      icon: const Icon(Icons.add),
      label: const TextCustomWidget(
        text: 'OutlinedButton Icon',
      ),
    );
  }
}

class _TextButton extends StatelessWidget {
  const _TextButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.pushNamed(
        CodeScreenShared.routeName,
        extra: {
          'screenName': 'OutlinedButton Icon',
          'code': '''
            ElevatedButton(
              onPressed: () {}
              child: const TextCustomWidget(
                text: 'ElevatedButton',
              ),
            )
          '''
        },
      ),
      child: const TextCustomWidget(
        text: 'TextButton',
      ),
    );
  }
}

class _TextButtonWithIcon extends StatelessWidget {
  const _TextButtonWithIcon();

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => context.pushNamed(
        CodeScreenShared.routeName,
        extra: {
          'screenName': 'OutlinedButton Icon',
          'code': '''
            ElevatedButton(
              onPressed: () {}
              child: const TextCustomWidget(
                text: 'ElevatedButton',
              ),
            )
          '''
        },
      ),
      icon: const Icon(Icons.add),
      label: const TextCustomWidget(
        text: 'TextButton Icon',
      ),
    );
  }
}

class _IconButton extends StatelessWidget {
  const _IconButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.pushNamed(
        CodeScreenShared.routeName,
        extra: {
          'screenName': 'IconButton',
          'code': '''
            ElevatedButton(
              onPressed: () {}
              child: const TextCustomWidget(
                text: 'ElevatedButton',
              ),
            )
          '''
        },
      ),
      icon: const Icon(Icons.add),
    );
  }
}

class _ButtonCustomWithInkWell extends StatelessWidget {
  const _ButtonCustomWithInkWell();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(
        CodeScreenShared.routeName,
        extra: {
          'screenName': 'CustomButton (InkWell)',
          'code': '''
            ElevatedButton(
              onPressed: () {}
              child: const TextCustomWidget(
                text: 'ElevatedButton',
              ),
            )
          '''
        },
      ),
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.black),
        ),
        child: const TextCustomWidget(
          text: 'CustomButton (InkWell)',
        ),
      ),
    );
  }
}

class _ButtonCustomIconWithInkWell extends StatelessWidget {
  const _ButtonCustomIconWithInkWell();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(
        CodeScreenShared.routeName,
        extra: {
          'screenName': 'CustomButton Icon (InkWell)',
          'code': ''' ''',
        },
      ),
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.black),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.add),
            SizedBox(width: 10),
            TextCustomWidget(
              text: 'CustomButton Icon (InkWell)',
            ),
          ],
        ),
      ),
    );
  }
}
