import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeViewer extends StatelessWidget {
  final String code;
  final String language;

  const CodeViewer({
    super.key,
    required this.code,
    this.language = 'dart',
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(16),
      height: size.height * 0.5,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Barra superior
          _buildHeader(context),
          // Contenido del código
          _buildCodeContent(),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
        color: Color(0xFF2D2D2D),
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF3D3D3D),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.code,
                  size: 14,
                  color: Colors.white70,
                ),
                const SizedBox(width: 6),
                Text(
                  language.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.copy, color: Colors.white70, size: 20),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: code));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Código copiado al portapapeles'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            tooltip: 'Copiar código',
          ),
        ],
      ),
    );
  }

  Widget _buildCodeContent() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              children: _highlightSyntax(code),
            ),
          ),
        ),
      ),
    );
  }

  List<TextSpan> _highlightSyntax(String code) {
    final List<TextSpan> spans = [];
    final List<String> lines = code.split('\n');

    for (int i = 0; i < lines.length; i++) {
      final String line = lines[i];
      spans.addAll(_processLine(line));

      if (i < lines.length - 1) {
        spans.add(const TextSpan(text: '\n'));
      }
    }

    return spans;
  }

  List<TextSpan> _processLine(String line) {
    final List<TextSpan> spans = [];

    // Patrones para diferentes elementos del código
    final RegExp keywords = RegExp(
      r'\b(void|int|double|String|var|final|const|class|extends|implements|return|if|else|for|while|do|break|continue|new|try|catch|throw|throws|import|package)\b',
      multiLine: true,
    );

    final RegExp strings = RegExp(
      "('.*?'|\"[^\"]*?\")",
      multiLine: true,
    );

    final RegExp comments = RegExp(
      r'(//.*|/\*.*?\*/)',
      multiLine: true,
    );

    final RegExp numbers = RegExp(r'\b\d+\b');

    final RegExp functions = RegExp(r'\b\w+(?=\s*\()');

    String remaining = line;
    int lastIndex = 0;

    // Procesar comentarios
    for (final Match match in comments.allMatches(line)) {
      if (match.start > lastIndex) {
        spans.add(TextSpan(text: line.substring(lastIndex, match.start)));
      }
      spans.add(TextSpan(
        text: match.group(0),
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xFF6A9955),
          fontWeight: FontWeight.w500,
        ),
      ));
      lastIndex = match.end;
    }

    if (lastIndex < line.length) {
      remaining = line.substring(lastIndex);
      lastIndex = 0;

      // Procesar strings
      for (final Match match in strings.allMatches(remaining)) {
        if (match.start > lastIndex) {
          spans.addAll(_processCodeSegment(
            remaining.substring(lastIndex, match.start),
            keywords,
            numbers,
            functions,
          ));
        }
        spans.add(TextSpan(
          text: match.group(0),
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFFCE9178),
            fontWeight: FontWeight.w500,
          ),
        ));
        lastIndex = match.end;
      }

      if (lastIndex < remaining.length) {
        spans.addAll(_processCodeSegment(
          remaining.substring(lastIndex),
          keywords,
          numbers,
          functions,
        ));
      }
    }

    return spans;
  }

  List<TextSpan> _processCodeSegment(
    String text,
    RegExp keywords,
    RegExp numbers,
    RegExp functions,
  ) {
    final List<TextSpan> spans = [];
    String remaining = text;
    int lastIndex = 0;

    // Procesar palabras clave
    for (final Match match in keywords.allMatches(text)) {
      if (match.start > lastIndex) {
        spans.add(TextSpan(text: text.substring(lastIndex, match.start)));
      }
      spans.add(
        TextSpan(
          text: match.group(0),
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF569CD6),
            fontWeight: FontWeight.w500,
          ),
        ),
      );
      lastIndex = match.end;
    }

    if (lastIndex < text.length) {
      remaining = text.substring(lastIndex);
      lastIndex = 0;

      // Procesar números
      for (final Match match in numbers.allMatches(remaining)) {
        if (match.start > lastIndex) {
          spans.add(
            TextSpan(
              text: remaining.substring(lastIndex, match.start),
            ),
          );
        }
        spans.add(
          TextSpan(
            text: match.group(0),
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFFB5CEA8),
              fontWeight: FontWeight.w500,
            ),
          ),
        );
        lastIndex = match.end;
      }

      if (lastIndex < remaining.length) {
        remaining = remaining.substring(lastIndex);
        lastIndex = 0;

        // Procesar funciones
        for (final Match match in functions.allMatches(remaining)) {
          if (match.start > lastIndex) {
            spans.add(
              TextSpan(
                text: remaining.substring(lastIndex, match.start),
              ),
            );
          }
          spans.add(
            TextSpan(
              text: match.group(0),
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFFDCDCAA),
                fontWeight: FontWeight.w500,
              ),
            ),
          );
          lastIndex = match.end;
        }

        if (lastIndex < remaining.length) {
          spans.add(TextSpan(text: remaining.substring(lastIndex)));
        }
      }
    }

    return spans;
  }
}
