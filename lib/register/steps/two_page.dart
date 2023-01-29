import 'package:flutter/material.dart';

import '../model/register_model.dart';

class TwoPage extends StatefulWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  State<TwoPage> createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  final emailEC = TextEditingController();
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
    emailEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Step Two',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          TextFormField(
            controller: emailEC,
            decoration: const InputDecoration(labelText: 'E-mail'),
          ),
          ElevatedButton(
            onPressed: () {
              var model = registerModel.copyWith(email: emailEC.text);
              Navigator.pushNamed(context, '/three', arguments: model);
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
