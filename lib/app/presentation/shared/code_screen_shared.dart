import 'package:flutter/material.dart';
import 'package:widgets_flutter/app/presentation/presentation.dart';

class CodeScreenShared extends StatelessWidget {
  const CodeScreenShared({
    super.key,
    required this.screenName,
    required this.code,
  });

  final String screenName;
  final String code;

  static const routeName = '/code-screen-shared';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextCustomWidget(
          text: screenName,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Center(
        child: CodeViewer(
          code: code,
        ),
      ),
    );
  }
}
