import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zhasqoldau/core/bloc_factory.dart';

import '../../auth/repository/auth_repository.dart';
import '../cubit/sign_up_cubit.dart';
import 'sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  final BlocCreator<SignUpCubit> blocCreator;
  
  const SignUpPage({
    Key? key,
    required this.blocCreator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocProvider<SignUpCubit>(
          create: (_) => blocCreator(),
          child: const SignUpForm(),
        ),
      ),
    );
  }
}
