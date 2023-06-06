import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/view_models/app_view_model.dart';

import '../../models/task_model.dart';

class SettingsBottomSheetView extends StatelessWidget {
  const SettingsBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();

    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: 80,
            child: Center(
              child: SizedBox(
                height: 40,
                width: 250,
                child: TextField(
                  onSubmitted: (value) {
                    if (entryController.text.isNotEmpty) {
                      viewModel.updateUsername(entryController.text);
                    }

                    Navigator.of(context).pop();
                  },
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(bottom: 5),
                      filled: true,
                      fillColor: viewModel.clrLv2,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            const BorderSide(width: 0, style: BorderStyle.none),
                      )),
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: viewModel.clrLv4,
                  autofocus: true,
                  autocorrect: false,
                  controller: entryController,
                  style: TextStyle(
                    color: viewModel.clrLv4,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
