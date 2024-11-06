import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation.dart';

class DropdownButtonScreen extends StatelessWidget {
  const DropdownButtonScreen({super.key});

  static const routeName = '/dropdown-button';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextCustomWidget(
          text: 'DropdownButton',
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // * DropdownButton
          TextCustomWidget(
            text: 'DropdownButton:',
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
          SizedBox(height: 8),
          _DropdownButton(),

          // * DropdownButtonCustomized
          SizedBox(height: 40),
          TextCustomWidget(
            text: 'DropdownButton personalizado:',
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
          SizedBox(height: 8),
          _DropdownButtonCustom(),
        ],
      ),
    );
  }
}

// * DropdownButton default
class _DropdownButton extends StatefulWidget {
  const _DropdownButton();

  @override
  State<_DropdownButton> createState() => _DropdownButtonState();
}

class _DropdownButtonState extends State<_DropdownButton> {
  // * Start values for dropdown.
  List<String> fruits = ['Manzana', 'Pera', 'Naranja', 'Sandia', 'Uva'];
  String defaultFruit = '';

  @override
  void initState() {
    super.initState();

    defaultFruit = fruits.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true, // * Ocupa todo el ancho de la pantalla.
      /* Puedes agregar un solo icono o varios.
        Esta vez, agrego un icono de flecha hacia abajo y un icono de códigos.
        Primer icono: Flecha hacia abajo para abrir el menu.
        Segundo icono: Para abrir la ventana de códigos.
      */
      icon: Row(
        children: [
          const Icon(Icons.arrow_downward),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () => context.pushNamed(
              CodeScreenShared.routeName,
              extra: {
                'screenName': 'DropdownButton',
                'code': '''
DropdownButton<String>(
  isExpanded: true, // * Ocupa todo el ancho de la pantalla.
  /* Puedes agregar un solo icono o varios.
    Esta vez, agrego un icono de flecha hacia abajo y un icono de códigos.
    Primer icono: Flecha hacia abajo para abrir el menu.
    Segundo icono: Para abrir la ventana de códigos.
  */
  icon: Row(
    children: [
      const Icon(Icons.arrow_downward),
      const SizedBox(width: 10),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.code),
      )
    ],
  ), // * Puedes agregar un icono.
  hint: const TextCustomWidget(
    text: 'Seleccione una fruta', // * Texto por defecto.
  ),
  value: defaultFruit,
  items: fruits
      .map(
        (e) => DropdownMenuItem<String>(
          value: e,
          child: TextCustomWidget(text: e),
        ),
      )
      .toList(),
  onChanged: (value) {
    defaultFruit = value!;
    setState(() {});
  },
); ''',
              },
            ),
            icon: const Icon(Icons.code),
          )
        ],
      ), // * Puedes agregar un icono.
      hint: const TextCustomWidget(
        text: 'Seleccione una fruta', // * Texto por defecto.
      ),
      value: defaultFruit,
      items: fruits
          .map(
            (e) => DropdownMenuItem<String>(
              value: e,
              child: TextCustomWidget(text: e),
            ),
          )
          .toList(),
      onChanged: (value) {
        defaultFruit = value!;
        setState(() {});
      },
    );
  }
}

// * DropdownButton customized.
class _DropdownButtonCustom extends StatefulWidget {
  const _DropdownButtonCustom();

  @override
  State<_DropdownButtonCustom> createState() => _DropdownButtonCustomState();
}

class _DropdownButtonCustomState extends State<_DropdownButtonCustom> {
  // * Start values for dropdown.
  List<String> fruits = ['Manzana', 'Pera', 'Naranja', 'Sandia', 'Uva'];
  String defaultFruit = '';

  @override
  void initState() {
    super.initState();

    defaultFruit = fruits.first;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: TextButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          showDragHandle: true,
          builder: (context) => _Items(
            fruits: fruits,
            onPressed: (String value) {
              defaultFruit = value;
              context.pop();
              setState(() {});
            },
          ),
        ),
        style: TextButton.styleFrom(
          side: const BorderSide(color: Colors.black, width: 1),
        ),
        child: TextCustomWidget(
          text: defaultFruit,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
    );
  }
}

class _Items extends StatelessWidget {
  const _Items({
    required this.fruits,
    required this.onPressed,
  });

  final List<String> fruits;
  final ValueChanged<String> onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView.builder(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          itemCount: fruits.length,
          itemBuilder: (_, index) {
            final item = fruits[index];
            return ListTile(
              title: TextCustomWidget(text: item),
              onTap: () => onPressed(item),
            );
          },
        ),
        ListTile(
          dense: true,
          title: const TextCustomWidget(text: 'Visualizar código'),
          onTap: () {
            context.pushNamed(
              CodeScreenShared.routeName,
              extra: {
                'screenName': 'DropdownButtonCustomized',
                'code': '''
// * DropdownButton customized.
class _DropdownButtonCustom extends StatefulWidget {
  const _DropdownButtonCustom();

  @override
  State<_DropdownButtonCustom> createState() => _DropdownButtonCustomState();
}

class _DropdownButtonCustomState extends State<_DropdownButtonCustom> {
  // * Start values for dropdown.
  List<String> fruits = ['Manzana', 'Pera', 'Naranja', 'Sandia', 'Uva'];
  String defaultFruit = '';

  @override
  void initState() {
    super.initState();

    defaultFruit = fruits.first;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: TextButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          showDragHandle: true,
          builder: (context) => _Items(
            fruits: fruits,
            onPressed: (String value) {
              defaultFruit = value;
              context.pop();
              setState(() {});
            },
          ),
        ),
        style: TextButton.styleFrom(
          side: const BorderSide(color: Colors.black, width: 1),
        ),
        child: TextCustomWidget(
          text: defaultFruit,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
    );
  }
}

class _Items extends StatelessWidget {
  const _Items({
    required this.fruits,
    required this.onPressed,
  });

  final List<String> fruits;
  final ValueChanged<String> onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView.builder(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          itemCount: fruits.length,
          itemBuilder: (_, index) {
            final item = fruits[index];
            return ListTile(
              title: TextCustomWidget(text: item),
              onTap: () => onPressed(item),
            );
          },
        ),
        ListTile(
          dense: true,
          title: const TextCustomWidget(text: 'Visualizar código'),
          onTap: () {},
          trailing: const Icon(Icons.arrow_right_alt_outlined),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}''',
              },
            );
            context.pop();
          },
          trailing: const Icon(Icons.arrow_right_alt_outlined),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
