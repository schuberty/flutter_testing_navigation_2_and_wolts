import 'package:flutter/material.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class SimpleView extends StatelessWidget {
  const SimpleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            WoltModalSheet.show(
              useRootNavigator: true,
              useSafeArea: true,
              context: context,
              modalTypeBuilder: (_) => WoltModalType.bottomSheet,
              pageListBuilder: (context) {
                return [
                  WoltModalSheetPage.withSingleChild(
                    enableDrag: true,
                    child: Container(
                      height: 200,
                      color: Colors.red,
                    ),
                  ),
                ];
              },
            );
          },
          child: const Text("Show Wolt Modal"),
        ),
      ),
    );
  }
}
