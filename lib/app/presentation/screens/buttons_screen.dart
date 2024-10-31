import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_flutter/app/presentation/presentation.dart';

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
        spacing: 6,
        runSpacing: 10,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          ElevatedButton(
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
          ),
          ElevatedButton.icon(
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
          ),
          OutlinedButton(
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
          ),
          OutlinedButton.icon(
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
          ),
          TextButton(
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
          ),
          TextButton.icon(
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
          ),
          IconButton(
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
          ),

          // CustomButton
          InkWell(
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
              child: const TextCustomWidget(
                text: 'CustomButton (InkWell)',
              ),
            ),
          )
        ],
      ),
    );
  }
}
