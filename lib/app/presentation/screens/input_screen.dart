import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: 'TextField',
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
      decoration: const InputDecoration(
        labelText: 'TextFormField',
      ),
    );
  }
}

class _CupertinoTextField extends StatelessWidget {
  const _CupertinoTextField();

  @override
  Widget build(BuildContext context) {
    return const CupertinoTextField(
      placeholder: 'CupertinoTextField',
    );
  }
}

class _CupertinoTextFieldRow extends StatelessWidget {
  const _CupertinoTextFieldRow();

  @override
  Widget build(BuildContext context) {
    return CupertinoTextFormFieldRow(
      prefix: const Icon(Icons.add),
      controller: TextEditingController(),
      placeholder: 'CupertinoTextFieldRow',
    );
  }
}
