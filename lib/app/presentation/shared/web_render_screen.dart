import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:widgets_flutter/app/presentation/presentation.dart';

// ignore: depend_on_referenced_packages
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class WebRenderScreen extends StatelessWidget {
  const WebRenderScreen({
    super.key,
    required this.urlBase,
  });

  static const routeName = '/web-render';

  final String urlBase;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextCustomWidget(text: 'Documentación'),
      ),
      body: _Body(urlPath: urlBase),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({
    required this.urlPath,
  });

  final String urlPath;

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  late final WebViewController _webViewController;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    onInit();
  }

  void onInit() {
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final webViewController = WebViewController.fromPlatformCreationParams(
      params,
    );

    webViewController
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) {
            isLoading = false;
            setState(() {});
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.urlPath));

    _webViewController = webViewController;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(controller: _webViewController),
        if (isLoading)
          const Align(
            alignment: Alignment.center,
            child: CircularProgressIndicator(),
          ),
      ],
    );
  }
}
