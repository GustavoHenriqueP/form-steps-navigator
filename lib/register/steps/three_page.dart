import 'package:flutter/material.dart';

import '../model/register_model.dart';

class ThreePage extends StatefulWidget {
  const ThreePage({Key? key}) : super(key: key);

  @override
  State<ThreePage> createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {
  final siteEC = TextEditingController();
  late RegisterModel registerModel;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      registerModel =
          ModalRoute.of(context)?.settings.arguments as RegisterModel;
    });
  }

  @override
  void dispose() {
    siteEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Step Three',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          TextFormField(
            controller: siteEC,
            decoration: const InputDecoration(labelText: 'Site'),
          ),
          ElevatedButton(
            onPressed: () {
              var model = registerModel.copyWith(site: siteEC.text);
              print(model);
            },
            child: const Text('Cadastrar'),
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
