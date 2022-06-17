import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zhasqoldau/core/bloc_factory.dart';
import 'package:zhasqoldau/features/login/cubit/login_cubit.dart';
import 'login_form.dart';
class LoginPage extends StatelessWidget {
  final BlocCreator<LoginCubit> blocCreator;

  const LoginPage({
    Key? key,
    required this.blocCreator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocProvider<LoginCubit>(
          create: (_) => blocCreator(),
          child: const LoginForm(),
        ),
      ),
    );
  }
}
