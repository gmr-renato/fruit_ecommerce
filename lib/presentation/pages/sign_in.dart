import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import '../../design_system/fruit_design_system.dart';
import '../../infrastructure/core/get_initializer.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      providers: [
        EmailAuthProvider(),
        // TODO: use SHA local hash to make it work
        // GoogleProviderConfiguration(
        //   clientId:
        //       '119615536254-dc5iuibmfjkj7ebjccq88btvtkmo0clc.apps.googleusercontent.com',
        // )
      ],
      headerBuilder: (context, constraints, number) {
        return Padding(
          padding: const EdgeInsets.all(FruitUnit.xLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fruits e-commerce',
                style: getIt<FruitTheme>().primaryTextTheme.headline5,
              ),
            ],
          ),
        );
      },
    );
  }
}
