import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  static const String routeName = '/input';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextCustomWidget(
          text: 'Inputs',
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: const Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: _Body(),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // * TextField
        SizedBox(height: 10),
        _TextField(),

        // * TextField Icon
        SizedBox(height: 30),
        _TextFormField(),

        // * CupertinoTextField
        SizedBox(height: 30),
        _CupertinoTextField(),

        // * CupertinoTextFieldRow
        SizedBox(height: 30),
        _CupertinoTextFieldRow(),

        ButtonReadDocWidget(
          urlDoc: 'https://docs.flutter.dev/ui/widgets/input',
        ),
      ],
    );
  }
}

class _TextField extends StatelessWidget {
  const _TextField();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(),
      obscureText: false, // Use secure text for passwords.
      onChanged: (value) {}, // Llamado cuando el usuario cambia el texto.
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'TextField',
        suffixIcon: IconButton(
          onPressed: () => context.pushNamed(
            CodeScreenShared.routeName,
            extra: {
              'screenName': 'TextField ',
              'code': '''
TextField(
  controller: TextEditingController(),
  obscureText: false, // Utilice texto seguro para contraseñas.
  onChanged: (value) {}, // Llamado cuando el usuario cambia el texto.
  style: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
  keyboardType: TextInputType.number,
  decoration: InputDecoration(
    labelText: 'TextField',
    suffixIcon: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.code),
    ),
  ),
)
              ''',
            },
          ),
          icon: const Icon(Icons.code),
        ),
      ),
    );
  }
}

class _TextFormField extends StatelessWidget {
  const _TextFormField();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'TextFormField',
        suffixIcon: IconButton(
          onPressed: () => context.pushNamed(
            CodeScreenShared.routeName,
            extra: {
              'screenName': 'TextFormField ',
              'code': '''
TextFormField(
  controller: TextEditingController(),
  obscureText: false, // Utilice texto seguro para contraseñas.
  keyboardType: TextInputType.number,
  onChanged: (value) {}, // Llamado cuando el usuario cambia el texto.
  validator: (value) {
    return null;
  }, // Llamado cuando el usuario presiona el botón de enviar.
  decoration: InputDecoration(
    labelText: 'TextFormField',
  ),
)
              '''
            },
          ),
          icon: const Icon(Icons.code),
        ),
      ),
    );
  }
}

class _CupertinoTextField extends StatelessWidget {
  const _CupertinoTextField();

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      obscureText: false, // Utilice texto seguro para contraseñas.
      keyboardType: TextInputType.number,
      onChanged: (value) {}, // Llamado cuando el usuario cambia el texto.
      autofocus: false, // Utilice el teclado cuando se inicia la aplicación.
      controller: TextEditingController(),
      prefix: IconButton(
        onPressed: () => context.pushNamed(
          CodeScreenShared.routeName,
          extra: {
            'screenName': 'CupertinoTextFormFieldRow',
            'code': '''
CupertinoTextField(
  obscureText: false, // Utilice texto seguro para contraseñas.
  keyboardType: TextInputType.number,
  onChanged: (value) {}, // Llamado cuando el usuario cambia el texto.
  autofocus: false, // Utilice el teclado cuando se inicia la aplicación.
  controller: TextEditingController(),
  prefix: IconButton(
    onPressed: () {},
    icon: const Icon(Icons.code),
  ),
  placeholder: 'CupertinoTextField',
) ''',
          },
        ),
        icon: const Icon(Icons.code),
      ),
      placeholder: 'CupertinoTextField',
    );
  }
}

class _CupertinoTextFieldRow extends StatelessWidget {
  const _CupertinoTextFieldRow();

  @override
  Widget build(BuildContext context) {
    return CupertinoTextFormFieldRow(
      obscureText: false, // Utilice texto seguro para contraseñas.
      keyboardType: TextInputType.number,
      onChanged: (value) {}, // Llamado cuando el usuario cambia el texto.
      validator: (value) {
        return null;
      }, // Llamado para validar cuando el usuario presiona el botón de enviar.
      controller: TextEditingController(),
      prefix: IconButton(
        onPressed: () => context.pushNamed(
          CodeScreenShared.routeName,
          extra: {
            'screenName': 'CupertinoTextFormFieldRow',
            'code': '''
CupertinoTextFormFieldRow(
  obscureText: false, // Utilice texto seguro para contraseñas.
  keyboardType: TextInputType.number,
  onChanged: (value) {}, // Llamado cuando el usuario cambia el texto.
  validator: (value) {
    return null;
  }, // Llamado para validar cuando el usuario presiona el botón de enviar.
  controller: TextEditingController(),
  prefix: IconButton(
    onPressed: () {},
    icon: const Icon(Icons.code),
  ),
  placeholder: 'CupertinoTextFieldRow',
)
            ''',
          },
        ),
        icon: const Icon(Icons.code),
      ),

      placeholder: 'CupertinoTextFieldRow',
    );
  }
}
