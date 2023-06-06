import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/view_models/app_view_model.dart';
import 'package:todo_list/views/bottom_sheets/add_task_bottom_sheet_view.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return SizedBox(
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: viewModel.clrLv3,
              foregroundColor: viewModel.clrLv1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              viewModel.bottomSheetBuilder(AddTaskBottomSheetView(), context);
            },
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
        );
      },
    );
  }
}
