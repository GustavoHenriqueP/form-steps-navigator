import 'package:flutter/material.dart';

import '../model/register_model.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  final nameEC = TextEditingController();

  @override
  void dispose() {
    nameEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Step One',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          TextFormField(
            controller: nameEC,
            decoration: const InputDecoration(labelText: 'Nome'),
          ),
          ElevatedButton(
            onPressed: () {
              var model = RegisterModel(name: nameEC.text);
              Navigator.pushNamed(context, '/two', arguments: model);
            },
            child: const Text('Próximo passo'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: const Text('Sair do cadastro'),
          ),
        ],
      ),
    );
  }
}
