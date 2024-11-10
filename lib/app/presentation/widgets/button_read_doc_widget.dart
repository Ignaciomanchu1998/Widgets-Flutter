import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation.dart';

class ButtonReadDocWidget extends StatelessWidget {
  const ButtonReadDocWidget({super.key, required this.urlDoc});

  final String urlDoc;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const TextCustomWidget(
          text: 'Necesitas más información? ',
          fontSize: 15,
          fontWeight: FontWeight.w300,
        ),
        TextButton(
          onPressed: () => context.pushNamed(
            WebRenderScreen.routeName,
            extra: urlDoc,
          ),
          child: const TextCustomWidget(
            text: 'Leer aquí',
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
