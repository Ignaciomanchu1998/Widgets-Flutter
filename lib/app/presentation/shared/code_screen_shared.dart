import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:widgets_flutter/app/presentation/presentation.dart';
import 'package:widgets_flutter/config/theme/code_viewer_theme.dart';

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
        child: CodeTheme(
          data: CodeThemeData(styles: monokaiSublimeTheme),
          child: SingleChildScrollView(
            child: CodeField(
              controller: CodeController(
                text: code,
              ),
              wrap: true,
              gutterStyle: const GutterStyle(
                showErrors: true,
                showFoldingHandles: false,
                showLineNumbers: false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
