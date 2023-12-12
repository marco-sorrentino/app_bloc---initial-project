import 'package:counter_app_bloc/bloc/bloc_imports.dart';
import 'package:counter_app_bloc/bloc/text/text_bloc.dart';
import 'package:counter_app_bloc/bloc/text/text_event.dart';
import 'package:counter_app_bloc/widget/text_generated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextUser extends StatefulWidget {
  const TextUser({Key? key}) : super(key: key);

  @override
  State<TextUser> createState() => _TextUserState();
}

class _TextUserState extends State<TextUser> {
  final _yourTextController = TextEditingController();

  @override
  void dispose() {
    _yourTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void _sendText() {
      if (_yourTextController.text.isNotEmpty) {
        context.read<TextBloc>().add(TextAdd(_yourTextController.text));
      }
      _yourTextController.clear();
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Text("Insert text"),
              CupertinoTextField(
                controller: _yourTextController,
              ),
              CupertinoButton.filled(
                child: const Text("SUBMIT"),
                onPressed: _sendText,
              ),
              TextGenerated()
            ],
          ),
        ),
      ),
    );
  }
}




/*   final DateTime myDate = DateTime(2023, DateTime.november, 10);
  final yourDate = DateTime(2023, 11, 12);

  checkDate(yourDate) {
    final yourDate = DateTime(2023, 12, 29);
    final date2 = DateTime.now();
    final difference = date2.difference(yourDate).inDays;
    if (difference >= 0 && difference <= 30 ||
        difference >= 0 && difference >= -30) {
      print(true);
    } else {
      print(false);
    }
    print(difference);
  }
 */