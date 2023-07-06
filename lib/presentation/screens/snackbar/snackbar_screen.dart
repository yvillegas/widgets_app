import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text("Hola Mundo"),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
                title: const Text('Estas seguro?'),
                content: const Text(
                    'Et nulla mollit culpa sunt proident. In aliqua officia deserunt irure ut excepteur commodo aliquip sint duis voluptate eiusmod. Do sint culpa irure est tempor ea qui officia velit proident eiusmod. Proident et proident id amet aliquip. Esse fugiat minim pariatur est non pariatur voluptate officia ex ut. Nulla ex proident tempor tempor laboris consectetur. Occaecat nostrud do nisi commodo ipsum eu.'),
                actions: [
                  TextButton(
                      onPressed: () => context.pop(),
                      child: const Text('Cancelar')),
                  FilledButton(onPressed: () {}, child: const Text('Aceptar')),
                ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Magna sit mollit aliqua aliqua adipisicing commodo sit laboris ipsum voluptate ipsum.')
                  ]);
                },
                child: const Text("Licencias usadas")),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text("Mostrar diálogo")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
