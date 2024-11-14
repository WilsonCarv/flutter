import 'package:flutter/material.dart';
import 'package:forms_app/presentation/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FlutterLogo(size: 100),
          _RegisterForm(),
        ]),
      ),
    );
  }
}

class _RegisterForm extends StatefulWidget {
  const _RegisterForm();

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    String username = '';
    String email = '';
    String password = '';
    return Form(
      key: _formKey,
        child: Column(children: [
      CustomTextFormField(
        label: 'Username',
        onChanged: (value) => username = value,
        validator: (value) {
          if (value == null || value.isEmpty) return 'Required field';
          if (value.trim().isEmpty) return 'Required field';
          if (value.length < 6) return 'Should be grater than 6';
          return null;
        },
      ),
      const SizedBox(height: 10),
      CustomTextFormField(
        label: 'Email',
        onChanged: (value) => email = value,
        validator: (value) {
          if (value == null || value.isEmpty) return 'Required field';
          if (value.trim().isEmpty) return 'Required field';
          final emailRegExp = RegExp(
            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
          );

          if (!emailRegExp.hasMatch(value)) return 'Invalid email address';

          return null;
        },
      ),
      const SizedBox(height: 10),
      CustomTextFormField(
        label: 'Password',
        obscureText: true,
        onChanged: (value) => password = value,
        validator: (value) {
          if (value == null || value.isEmpty) return 'Required field';
          if (value.trim().isEmpty) return 'Required field';
          if (value.length < 6) return 'Should be grater than 6';
          return null;
        },
      ),
      const SizedBox(height: 20),
      FilledButton.tonalIcon(
        onPressed: () {
          final isValid = _formKey.currentState?.validate() ?? false;
          if (!isValid) return;

          print('$username, $email, $password');
        },
        icon: const Icon(Icons.save),
        label: const Text('Register'),
      ),
    ]));
  }
}
