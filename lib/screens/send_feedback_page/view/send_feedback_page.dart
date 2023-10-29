import 'package:flutter/material.dart';
import 'package:yu_health/config/ui_sizes.dart';
import 'package:yu_health/custom_widgets/buttons.dart';
import 'package:yu_health/custom_widgets/spacing.dart';
import 'package:yu_health/custom_widgets/text_fields.dart';

class SendFeedbackPage extends StatefulWidget {
  const SendFeedbackPage({super.key});

  @override
  State<SendFeedbackPage> createState() => _SendFeedbackPageState();
}

class _SendFeedbackPageState extends State<SendFeedbackPage> {
//Form controllers
  final _formKey = GlobalKey<FormState>();
  final _subjectController = TextEditingController();
  final _descriptionController = TextEditingController();

  //
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    // UI
    return Scaffold(
      backgroundColor: theme.background,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        titleSpacing: 0,
        title: Text(
          'Send Feedback',
          style: TextStyle(
            color: theme.onBackground,
          ),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.image),
        //   ),
        //   widthspace(10),
        // ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: globalScreenPaddingX),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                heightspace(15),
                MyTextFormField(
                  controller: _subjectController,
                  hint: 'Subject',
                ),
                heightspace(10),
                MyMultilineTextFormField(
                  controller: _descriptionController,
                  hint: 'Description\n\n',
                  maxLines: 5,
                ),
                heightspace(10),
                Row(
                  children: [
                    Expanded(
                      child: MySecondaryButtonWithIcon(
                        onPressed: () {},
                        icon: const Icon(Icons.add_a_photo),
                        label: 'Image',
                      ),
                    ),
                    widthspace(5),
                    Expanded(
                      child: MySecondaryButtonWithIcon(
                        onPressed: () {},
                        icon: const Icon(Icons.clear_all),
                        label: 'Clear all',
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: MyPrimaryButtonWithIcon(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                    label: 'Send',
                  ),
                ),
                const Divider(),
                heightspace(5),

                // Builder for sent feedback list
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   shape: const CircleBorder(),
      //   backgroundColor: theme.primary,
      //   foregroundColor: theme.onPrimary,
      //   child: const Icon(Icons.send),
      //   onPressed: () {},
      // ),
    );
  }
}
