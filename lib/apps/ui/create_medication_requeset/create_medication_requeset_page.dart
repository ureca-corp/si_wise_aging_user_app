import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/ui/create_medication_requeset/sections/forms_section.dart';
import 'package:si_wise_aging_user_app/apps/ui/create_medication_requeset/sections/sign_section.dart';
import 'package:si_wise_aging_user_app/common/components/custom_appbar/custom_appbar.dart';

class CreateMedicationRequesetPage extends ConsumerStatefulWidget {
  const CreateMedicationRequesetPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateMedicationRequesetPageState();
}

class _CreateMedicationRequesetPageState
    extends ConsumerState<CreateMedicationRequesetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        leading: Container(),
        title: "투약 의뢰서 작성",
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            children: [
              MedicationFormsSection(),
              SizedBox(
                height: 32,
              ),
              MedicationSignSection(),
            ],
          ),
        ),
      ),
    );
  }
}
